import axios from "axios";

export const getTitleBodyPairs = fileName =>
	axios.get("./" + "jupyter_html/" + fileName).then(response => {

		const doc = new DOMParser().parseFromString(response.data, "text/html");

		var Cell = [...doc.getElementsByClassName("jp-Cell")];

		return Cell.map((t, idx) => {

			var headding = cleanupCell([...t.getElementsByClassName("jp-InputArea")][0], idx);
			var body = cleanupCell([...t.getElementsByClassName("jp-OutputArea")][0], null);

			//Convert to JSX
			return ({
				title: headding ? <div dangerouslySetInnerHTML={{__html: headding.innerHTML}} /> : null,
				body: body ? <div dangerouslySetInnerHTML={{__html: body.innerHTML}} /> : null
			})
		});
	});

export const cleanupCell = (cell, idx) => {

	if (cell == null) return null;

	//Process individually
	if (Array.isArray(cell))
		return cell.map(c => cleanupCell(c))

	//Remove number from Notebook
	const elements = [...cell.getElementsByClassName("jp-InputPrompt"), ...cell.getElementsByClassName("jp-OutputPrompt")]
	elements.map(e => {
		if (idx !== null) e.parentNode.insertBefore(document.createTextNode(idx + ": "), e);
		e.parentNode.removeChild(e);
	})

	return cell;
}