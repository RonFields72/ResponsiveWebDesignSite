<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ResponsiveWebDesignOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Mobile ASP.NET, Telerik Responsive Web Design in ASP.NET Coolness</title>
    <meta description="Introduction to Responsive Web Design in ASP.NET - responsive design for ASP.NET developers who build web apps targeting all screen resolutions." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr t-rwd-overview" RenderRowWrappers="Root">

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Content>
                                <h1>Responsive Web Design</h1>
                            </Content>
                        </telerik:LayoutRow>

                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="6" SpanSm="12" SpanXs="12">
                                    <p>
                                        In times when the sales of tablets and smartphones exceed the sales of desktop PCs, when people use all kinds of mobile devices to browse the web and are allowed to bring their own device to work, ASP.NET developers face the challenge of building web applications targeting all screen resolutions. 
                                    </p>
                                    <p>No surprise “responsive web design” has become such a buzz word having in mind it’s what enables developers to build one web site or app and deliver good user experience across all browsers and devices.</p>
                                </telerik:LayoutColumn>
                                <telerik:LayoutColumn Span="6" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                                    <h5>Percentage of People Accessing the Web From Mobile Devices</h5>
                                    <img style="max-width:100%" src="<%= ResolveUrl("~/Images/device-percentage.png") %>" alt="Percentage of People Accessing the Web From Mobile Devices" />
                                    <em>Stats belong to <a href="http://www.emarketer.com/Article/Middle-East-Africa-Nearly-All-Web-Users-Mobile/1010507/2">eMarketer</a> (January 2014) </em>
                                </telerik:LayoutColumn>

                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow>
                            <Columns>

                                <telerik:LayoutColumn Span="6"  HiddenSm="true" HiddenXs="true" CssClass="t-rwd-center">
                                    <img style="max-width:100%" src="<%= ResolveUrl("~/Images/content-water.png") %>" alt="Content is like water" />
                                    <h5>Content is like water</h5>
                                    <em>“You put water into a cup, it becomes the cup.<br />
                                        You put water into a bottle, it becomes the bottle.<br />
                                        You put it in a teapot, it becomes the teapot.“<br /><br />
                                        The original illustration belongs to <a href="http://www.inpixelitrust.fr/">Stéphanie Walter</a> 
                                    </em>
                                </telerik:LayoutColumn>
                                <telerik:LayoutColumn Span="6" SpanSm="12" SpanXs="12" CssClass="t-rwd-right-fix">
                                    <h2>So what exactly constitutes a responsive web design?</h2>
                                    <p>The concept of responsive web design (RWD) suggests that the layout of the project needs to adapt to the media that renders it. The content of the application needs to be like water and make an efficient use of the available space on the screen.  Additionally, the content should be easily readable with appropriate font and image sizes.</p>
                                    <p>Let’s take a look at what techniques you can use to achieve RWD.</p>
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row t-rwd-clean-bottom-row t-rwd-media-section">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="12">
                                    <h2>Media Queries</h2>
                                    <p>Media queries are one of the cornerstones of Responsive Web Design.  By adding some filter criteria around CSS definitions, we can control under which conditions those rules are applied to web pages.  There are two places to define these criteria: using the media attribute of a link tag that references a CSS file or inline on a CSS file.</p>
                                    <p>The inline definition of a CSS media query looks like a block of code, with a syntax similar to:</p>
                                    <code class="t-rwd-code-sample">
<pre>@media only screen and (max-width:400px) {
    #navbar {
        float: none;
        width: 400px;
    }
} </pre>
                                    </code>
                                    <p>Anything inside of the @media block will only be formatted when the conditions defined next to the @media keyword are met by the browser. The same criteria can be used on the media attribute of a link tag, with syntax similar to the following:</p>
                                    <code class="t-rwd-code-sample">
<pre>&lt;link href="css/phone.css" rel="stylesheet" type="text/css" 
media="only screen and (max-width: 400px)"&gt;</pre>
                                    </code>
                                    <p>The difference between these two techniques is that the browser may elect to skip loading a stylesheet referenced with a media attribute that it cannot satisfy.  With inline media queries on a CSS stylesheet, the styles for all media types are always transmitted to the web site visitor.</p>
                                    <p>For more information on media query support and features, the W3C has a great article that defines the media <a href="http://www.w3.org/TR/css3-mediaqueries/">capabilities browsers should have</a>.</p>
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row t-rwd-adjust-top-row t-rwd-clean-bottom-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <h2>Grid-Based Layouts</h2>
                            </Content>
                        </telerik:LayoutRow>

                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="7" SpanSm="12" SpanXs="12">
                                    <p>
                                        In CSS layouts, designers want to ensure that things line up appropriately in the browser.  Columns of content should have a similar left or right boundary area.  To assist in this standard definition of layout, many have embraced the concept of a 12-column grid layout. 
                                    </p>
                                    <p>The grid layout helps define the size of content on any screen, and can be used to define layout on different screen sizes easily. The <a rel="nofollow" href="http://getbootstrap.com/">Bootstrap</a>, <a rel="nofollow" href="http://foundation.zurb.com/">Foundation</a>, <a href="http://www.telerik.com/products/aspnet-ajax/responsive-page-layout.aspx">Telerik Page Layout</a> and other frameworks provide various sizes for their grid columns based on the size of the browser.</p>
                                    <p>By adding and removing CSS class assignments appropriately in the web pages, content can be moved, sized, and even hidden on various browser sizes. For more information about how to use grids effectively on your website, check out the <a href="http://www.telerik.com/help/aspnet-ajax/page-layout-responsive-design-grid-based-layout.html">the grid article in the Telerik documentation</a>.</p>
                                </telerik:LayoutColumn>
                                <telerik:LayoutColumn Span="5" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                                    <img style="max-width:100%" src="<%= ResolveUrl("~/Images/responsive-sample-big.png") %>" alt="Grid-Based Layouts" />
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row t-rwd-adjust-top-row t-rwd-clean-bottom-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <h2>Flexible Images</h2>
                            </Content>
                        </telerik:LayoutRow>

                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="7" SpanSm="12" SpanXs="12">
                                    <p>
                                        A common problem found on mobile devices that attempt to access web sites is images that don’t fit on the screen appropriately.  These images may be too small for the mobile device, or even worse, too large and bleed off the side of the screen.  In a worst case scenario, some websites may display images so large that they don’t fit on the screen and cannot be accessed with pinch and zoom gestures.
A solution that designers use to ensure that images fit on screen is called Flexible Images.  On modern and mobile browsers, you can force images to fill their container appropriately by adding the following CSS to your pages:
                                    </p>
                                </telerik:LayoutColumn>
                                <telerik:LayoutColumn Span="5" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                                    <img style="max-width:100%" src="<%= ResolveUrl("~/Images/flexible-images.png") %>" alt="Flexible Images" />
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                        <telerik:LayoutRow>
                            <Content>
                                <code class="t-rwd-code-sample">
<pre>img { max-width: 100%; }</pre>
                                    </code>
                                    <p>With this rule, images will not grow larger than their container.  Conversely, to the CSS overflow rule you can add scroll-bars or crop those images that don’t fit on screen.   Most browsers have very good proportional resizing capabilities, and images will be scaled and presented properly.</p>
                                    <p>Others are trying interesting approaches with multiple sized images and some JavaScript to fetch, display and resize images appropriately.  Check out this great article at the Filament Group about Context-Aware Image Sizing.</p>
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row t-rwd-adjust-top-row t-rwd-clean-bottom-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <h2>Showing and Hiding Content</h2>
                            </Content>
                        </telerik:LayoutRow>

                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="12">
                                    <p>
                                        Not all content is intended for all browsers.  Do you really need to show the links and images for how to use a phone with the website to people accessing a website from a phone?
                                    </p>
                                    <p>Is your large 400 pixel wide mast-head image necessary on a phone? In responsive web design, this is the least technical design decision.  What elements should actually appear on each of the page sizes?  Not all devices need to see the entire website, nor should they.  Don’t be afraid to add a link to the bottom of the page to allow your website visitors to turn off the media queries so they can see the full website as it is intended for visitors with larger browsers.
</p>
                                    <code class="t-rwd-code-sample">
<pre>@media only screen and (max-width: 400px) {
	#reallyCoolMasthead { display: none; }
}</pre>
                                    </code>
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>


        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row t-rwd-adjust-top-row">
            <Columns>
                <telerik:CompositeLayoutColumn Span="12" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <h2>Conclusion</h2>
                            </Content>
                        </telerik:LayoutRow>

                        <telerik:LayoutRow CssClass="t-rwd-row-pad">
                            <Columns>
                                <telerik:LayoutColumn Span="12">
                                    <p>
                                        We reviewed a number of techniques to help you make your sites and apps responsive, but RWD is more than just a number of specific code snippets; it’s a way of thinking about how we build ASP.NET applications. Even more, it’s a way of predicting the future and thinking about flexibility, usability and spacing even for devices that are yet to be released. 
                                    </p>
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>

    </telerik:RadPageLayout>

</asp:Content>

