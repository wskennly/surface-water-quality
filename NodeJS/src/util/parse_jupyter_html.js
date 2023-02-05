import axios from "axios";
import { createRoot } from "react-dom";

export const getTitleBodyPairs = fileName =>
	axios.get("./" + "jupyter_html/" + fileName).then(response => {

		const doc = new DOMParser().parseFromString(response.data, "text/html");

		var titles = [...doc.querySelectorAll(".row.header")];

		var body = [...doc.querySelectorAll(".section-items")];

		return titles.map((t, idx) => (
				{
					title: t,
					body: body[idx],
					style: null
				}
			));
	});