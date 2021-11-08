/*
 * @jest-environment jsdom
 */

import { render } from "@testing-library/svelte";
import App from "../app.svelte";

test("should render", () => {
  const results = render(App);
  expect(() => results.getByText("Hello world")).not.toThrow();
});
