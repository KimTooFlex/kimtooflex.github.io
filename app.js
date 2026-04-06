
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

function GetHeader() {
    const now = new Date();
    const yy = String(now.getFullYear()).slice(-2);
    const mm = now.getMonth() + 1;
    const version = `v${yy}.${mm}`;

    return {
        cta: "Get Latest Stable " + version,
        checkout: "https://mainstack.com/kimtools-winforms/checkout",
        consult: ""
    }
}


function bannerMessages() {
    return {
           
           messages: [
            { 
                target: '_blank',
                text: 'Looking for <strong><a style=\'color:white;\' href=\'./bunifu/\'>Bunifu Framework?</a></strong> Get it at <strong>30%</strong> offer exclusively on kimtoo.net, Another WinForms Framework from KimTools creator.', 
                url: './bunifu/',
                cta: 'Get Bunifu 30% Offer'
            },
            {   target: '_blank',
                text: 'Need a <strong>custom app</strong> or a <strong>UI facelift</strong>? Let\'s build something great together.', 
                url: './consultancy/',
                cta: 'Book a Free Call'
            },
            { 
                target: '_self',
                text: 'Grab KimTools at <strong>52%</strong> limited offer. Use coupon <strong>SDK26</strong> at checkout.', 
                url: './pricing/',
                cta: 'Claim 52% Coupon'
            },
            {  
                target: '_self',
                text: 'Don\'t build another WinForms app without KimTools. Use <strong>52%</strong> coupon <strong>SDK26</strong> at checkout.', 
                url: './pricing/',
                cta: 'Use Code SDK26'
            },
            { 
                target: '_self',
                text: 'Your next WinForms project deserves better controls. Get KimTools at <strong>52%</strong> discount, use coupon <strong>SDK26</strong>.', 
                url: './pricing/',
                cta: 'Use 52% Coupon \'SDK26\''
            }
        ],
            current: 0,
            focus: false,
            init() {
                setInterval(() => {
                    if(this.focus) return;
                    this.current = (this.current + 1) % this.messages.length;
                }, 30000);
            }
        }
}


function controlsList() {
    return {
        baseUrl: 'https://docs.kimtoo.net/sdk/controls/',
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
