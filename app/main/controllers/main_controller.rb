# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store


    def add_contact
      _contacts << page._new_contact.to_h
      page._new_contact._label = ''
    end

    def add_search
      _contacts << page._new_contact.to_h
      page._new_contact._search = ''
    end

    def incomplete
      _contacts.count {|t| !t._completed}
    end

    def complete_all
      _contacts.each {|t| t._completed = true}
    end

    def clear_completed
      _contacts.select {|t| t._completed }.each(&:destroy)
    end

    def current_index
      params._index.to_i
    end

    def current_contact
      _contacts[current_index]
    end

    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
