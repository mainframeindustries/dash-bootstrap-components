using DashBootstrapComponents, DashHtmlComponents

card_content = [
    dbc_cardheader("Card header"),
    dbc_cardbody([
        html_h5("Card title", class_name = "card-title"),
        html_p("This is some card content that we'll reuse", class_name = "card-text"),
    ]),
];

cards = html_div([
    dbc_row(
        [
            dbc_col(dbc_card(card_content, color = "primary", inverse = true)),
            dbc_col(dbc_card(card_content, color = "secondary", inverse = true)),
            dbc_col(dbc_card(card_content, color = "info", inverse = true)),
        ],
        class_name = "mb-4",
    ),
    dbc_row(
        [
            dbc_col(dbc_card(card_content, color = "success", inverse = true)),
            dbc_col(dbc_card(card_content, color = "warning", inverse = true)),
            dbc_col(dbc_card(card_content, color = "danger", inverse = true)),
        ],
        class_name = "mb-4",
    ),
    dbc_row([
        dbc_col(dbc_card(card_content, color = "light")),
        dbc_col(dbc_card(card_content, color = "dark", inverse = true)),
    ]),
]);
