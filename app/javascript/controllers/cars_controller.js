import { Controller } from "@hotwired/stimulus";

import { Turbo } from "@hotwired/turbo-rails";




export default class extends Controller {
    static targets = ["checkbox", "form"];




    connect() {
        console.log(this.checkboxTargets);
        this.checkboxTargets.forEach(checkbox => {
            checkbox.addEventListener('click', this.updateUrlParams.bind(this));
        });
    }



    disconnect() {
        this.checkboxTargets.forEach(checkbox => {
            checkbox.removeEventListener('click', this.updateUrlParams.bind(this));
        });
    }



    updateUrlParams() {
        const urlParams = new URLSearchParams(window.location.search);

        console.log("hola soy");


        this.checkboxTargets.forEach(checkbox => {
            console.log("hola soy");
            if (!checkbox.checked) {
                if (urlParams.getAll(checkbox.name).includes(checkbox.value)) {
                    urlParams.delete(checkbox.name, checkbox.value)
                }
            }
            if (checkbox.checked) {
                if (!urlParams.getAll(checkbox.name).includes(checkbox.value)) {
                    urlParams.append(checkbox.name, checkbox.value);
                }
            }
        });

        window.location.href = `/cars?${urlParams.toString()}`
    }

}