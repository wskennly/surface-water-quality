import axios from "axios";

export const getTitleBodyPairs = fileName =>
	axios.get("./" + "jupyter_html/" + fileName).then(response => {

		const doc = new DOMParser().parseFromString(response.data, "text/html");

		var Cell = [...doc.getElementsByClassName("jp-Cell")];

		return Cell.map((t, idx) => {

			var headding = [...t.getElementsByClassName("jp-InputArea")][0];
			var body = [...t.getElementsByClassName("jp-OutputArea")][0];

			return ({
				title: cleanupCell(headding, idx),
				body: cleanupCell(body)
			})
		});
	});

export const cleanupCell = (cell, idx) => {

	if (cell == null) return null;

	//Process indivisually
	if (Array.isArray(cell))
		return cell.map(c => cleanupCell(c))

	//Remove number from Notebook
	const elements = [...cell.getElementsByClassName("jp-InputPrompt"), ...cell.getElementsByClassName("jp-OutputPrompt")]
	elements.map(e => {
		if (idx) e.parentNode.insertBefore(document.createTextNode(idx), e);
		e.parentNode.removeChild(e);
	})

	return cell;
}