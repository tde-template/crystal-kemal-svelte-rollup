/*
 * @jest-environment jsdom
 */

import '@testing-library/jest-dom'
import { render, fireEvent } from '@testing-library/svelte'
import App from '../App.svelte'

test('shows proper heading when rendered', () => {
  const { getByText } = render(App, { name: 'World' })
  expect(getByText('Hello World !')).toBeInTheDocument()
})

test('changes button text on click', async () => {
  const {getByText} = render(App, {name: 'World'})
  const button = getByText('Button')
  await fireEvent.click(button)
  expect(button).toHaveTextContent('Button Clicked')
})