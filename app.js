 
function mcp() {
    Swal.fire({
        theme: 'dark',
        title: "The KimTools MCP feature is on the way!",
        text: "Designed to unlock deeper control, smarter workflows, and advanced capabilities across the KimTools ecosystem.",
        imageUrl: "images/mcp.png",
        imageWidth: "150px"
    });
}


function comingSoon() {
    const Toast = Swal.mixin({
        theme: 'dark',
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });
    Toast.fire({
        icon: "info",
        title: "Under Development, Coming Soon..."
    });
}
 
function controlsList() {
    return {
        baseUrl: '',
        query: '',
        limit: 12, // initial number of cards to show
        controls: [
            { name: 'Kt-Window', slug: 'kt-window', thumbnail: 'https://img.daisyui.com/images/components/mockup-window.webp' },
            { name: 'Kt-Button', slug: 'kt-button', thumbnail: 'https://img.daisyui.com/images/components/button.webp' },
            { name: 'Kt-Table', slug: 'kt-table', thumbnail: 'https://img.daisyui.com/images/components/table.webp' },
            { name: 'Kt-CheckBox', slug: 'kt-checkbox', thumbnail: 'https://img.daisyui.com/images/components/checkbox.webp' },
            { name: 'Kt-CheckButton', slug: 'kt-checkbutton', thumbnail: 'https://img.daisyui.com/images/components/join.webp' },
            { name: 'Kt-RadioBox', slug: 'kt-radiobox', thumbnail: 'https://img.daisyui.com/images/components/radio.webp' },
            { name: 'Kt-RadioButton', slug: 'kt-radiobutton', thumbnail: 'https://img.daisyui.com/images/components/menu.webp' },
            { name: 'Kt-Switch', slug: 'kt-switch', thumbnail: 'https://img.daisyui.com/images/components/toggle.webp' },
            { name: 'Kt-Label', slug: 'kt-label', thumbnail: 'https://img.daisyui.com/images/components/label.webp' },
            { name: 'Kt-TextBox', slug: 'kt-textbox', thumbnail: 'https://img.daisyui.com/images/components/input.webp' },
            { name: 'Kt-Select', slug: 'kt-select', thumbnail: 'https://img.daisyui.com/images/components/dropdown.webp' },
            { name: 'Kt-Date', slug: 'kt-date', thumbnail: 'https://img.daisyui.com/images/components/calendar.webp' },
            { name: 'Kt-Divider', slug: 'kt-divider', thumbnail: 'https://img.daisyui.com/images/components/divider.webp' },
            { name: 'Kt-Pages', slug: 'kt-pages', thumbnail: 'https://img.daisyui.com/images/components/fieldset.webp' },
            { name: 'Kt-Panel', slug: 'kt-panel', thumbnail: 'https://img.daisyui.com/images/components/stack.webp' },
            { name: 'Kt-PictureBox', slug: 'kt-picturebox', thumbnail: 'https://img.daisyui.com/images/components/avatar.webp' },
            { name: 'Kt-ProgressBar', slug: 'kt-progressbar', thumbnail: 'https://img.daisyui.com/images/components/progress.webp' },
            { name: 'Kt-ProgressGauge', slug: 'kt-progressgauge', thumbnail: 'https://img.daisyui.com/images/components/radial-progress.webp' },
            { name: 'Kt-ProgressRadial', slug: 'kt-progressradial', thumbnail: 'https://img.daisyui.com/images/components/radial-progress.webp' },
            { name: 'Kt-Rating', slug: 'kt-rating', thumbnail: 'https://img.daisyui.com/images/components/rating.webp' },
            { name: 'Kt-ScrollBar', slug: 'kt-scrollbar', thumbnail: 'https://img.daisyui.com/images/components/range.webp' },
            { name: 'Kt-Shapes', slug: 'kt-shapes', thumbnail: 'https://img.daisyui.com/images/components/mask.webp' },
            { name: 'Kt-Slider', slug: 'kt-slider', thumbnail: 'https://img.daisyui.com/images/components/range.webp' },
            { name: 'Kt-Spinner', slug: 'kt-spinner', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Html', slug: 'kt-html', thumbnail: 'https://img.daisyui.com/images/components/mockup-code.webp' },
            { name: 'Kt-Theme', slug: 'kt-theme', thumbnail: 'https://img.daisyui.com/images/components/theme-controller.webp' },
            { name: 'Kt-Validation', slug: 'kt-validation', thumbnail: 'https://img.daisyui.com/images/components/validator.webp' },
            { name: 'Kt-Tooltips', slug: 'kt-tooltips', thumbnail: 'https://img.daisyui.com/images/components/tooltip.webp' },
            { name: 'Kt-Toasts', slug: 'kt-toasts', thumbnail: 'https://img.daisyui.com/images/components/toast.webp' },
            { name: 'Kt-Canvas', slug: 'kt-canvas', thumbnail: 'https://img.daisyui.com/images/components/skeleton.webp' },
            { name: 'Kt-Icons', slug: 'kt-icons', thumbnail: 'https://img.daisyui.com/images/components/mask.webp' },
            { name: 'Kt-Transitions', slug: 'kt-transitions', thumbnail: 'https://img.daisyui.com/images/components/swap.webp' },
            { name: 'Kt-PopOver', slug: 'kt-popover', thumbnail: 'https://img.daisyui.com/images/components/hover-3d.webp' },
            { name: 'Kt-Slots', slug: 'kt-slots', thumbnail: 'https://img.daisyui.com/images/components/hover-gallery.webp' }
        ],
        get filteredControls() {
            return this.controls.filter(c =>
                c.name.toLowerCase().includes(this.query.toLowerCase())
            );
        }
    }
}
