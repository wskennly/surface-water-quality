import axios from "axios";

export const getTitleBodyPairs = fileName =>
	axios.get("./" + "jupyter_html/" + fileName).then(response => {

		const doc = new DOMParser().parseFromString(response.data, "text/html");

		var Cell = [...doc.getElementsByClassName("jp-Cell")];

		return Cell.map((t, idx) => {

			var headding = [...t.getElementsByClassName("jp-InputArea")][0]
			var body = [...t.getElementsByClassName("jp-OutputArea")][0]

			return ({
				title: headding,
				body: cleanupCell(body)
			})
		});
	});

export const cleanupCell = cell => {
	return cell;
}