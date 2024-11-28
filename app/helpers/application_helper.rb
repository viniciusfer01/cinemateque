module ApplicationHelper

  def page_title(text)
    content_tag(:h1, class: "text-2xl font-extrabold dark:text-white mb-3") do
      text
    end
  end

  def button_link(text, path)
    link_to(path, class: "text-white bg-gradient-to-br from-green-400 to-blue-600 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-green-200 dark:focus:ring-green-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2") do
      text
    end
  end

  def delete_button(text, path)
    button_to(path, method: :delete, class: "text-white bg-gradient-to-br from-pink-500 to-orange-400 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2") do
      text
    end
  end
end
