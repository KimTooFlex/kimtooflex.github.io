function controlsList() {
    return {
        baseUrl: '',
        query: '',
        limit: 12, // initial number of cards to show
        controls: [
            { name: 'Kt-Window', slug: 'kt-window', thumbnail: 'https://img.daisyui.com/images/components/modal.webp' },
            { name: 'Kt-Button', slug: 'kt-button', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Table', slug: 'kt-table', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-CheckBox', slug: 'kt-checkbox', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-CheckButton', slug: 'kt-checkbutton', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-RadioBox', slug: 'kt-radiobox', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-RadioButton', slug: 'kt-radiobutton', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Switch', slug: 'kt-switch', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Label', slug: 'kt-label', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-TextBox', slug: 'kt-textbox', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Select', slug: 'kt-select', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Date', slug: 'kt-date', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Divider', slug: 'kt-divider', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Pages', slug: 'kt-pages', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Panel', slug: 'kt-panel', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-PictureBox', slug: 'kt-picturebox', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-ProgressBar', slug: 'kt-progressbar', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-ProgressGauge', slug: 'kt-progressgauge', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-ProgressRadial', slug: 'kt-progressradial', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Rating', slug: 'kt-rating', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-ScrollBar', slug: 'kt-scrollbar', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Shapes', slug: 'kt-shapes', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Slider', slug: 'kt-slider', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Spinner', slug: 'kt-spinner', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Html', slug: 'kt-html', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Theme', slug: 'kt-theme', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Validation', slug: 'kt-validation', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Tooltips', slug: 'kt-tooltips', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Toasts', slug: 'kt-toasts', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Canvas', slug: 'kt-canvas', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Icons', slug: 'kt-icons', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Transitions', slug: 'kt-transitions', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-PopOver', slug: 'kt-popover', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' },
            { name: 'Kt-Slots', slug: 'kt-slots', thumbnail: 'https://img.daisyui.com/images/components/loading.webp' }
        ],
        get filteredControls() {
            return this.controls.filter(c =>
                c.name.toLowerCase().includes(this.query.toLowerCase())
            );
        }
    }
}
