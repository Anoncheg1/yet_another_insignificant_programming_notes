
# Table of Contents

1.  [Aspect CTRM](#org0231749)
    1.  [Persons](#org9fde1a5)
    2.  [history](#org5317ec6)
    3.  [Ecosystems](#orgaed8ee4)
    4.  [Covering the full value chain of Liquefied Natural Gas](#org91f4294)
    5.  [What is Aspect CTRM?](#org1ebf749)
    6.  [Features](#orgc5009d4)
    7.  [interface](#orgb493168)
    8.  [Objects and Root nodes](#orgd6c50c3)
        1.  [Root nodes](#org5c9212b)
    9.  [Risk](#org6c9a57b)
2.  [Commodity Trading](#orge82cb56)
    1.  [terms](#org38b2ce8)
    2.  [free books](#org979f517)
    3.  [theory](#org9549537)
        1.  [differences:](#org93ecb6f)
        2.  [Cash, Forward, futures, options](#orga765758)
        3.  [other contracts](#org26da1a9)
        4.  [**Hedging**](#org65f9ac3)
        5.  [categories](#orgfb96cad)
        6.  [open interest and Bull/Bear market](#orga385395)
    4.  [todo](#org0f6dc19)
    5.  [trading process](#orgeb4aded)
    6.  [clearing services](#org5940af2)
        1.  [notable clearing services, electronic exchanges:](#orgf08e23b)
    7.  [Resources](#orgecfad7c)
    8.  [Exchanges or Exchange Traded Commodities.](#org0190a24)
    9.  [INCOTERMS](#org7a30cbe)
    10. [courses](#orgf1fa86f)

;-**- mode: Org; fill-column: 110;-**-


<a id="org0231749"></a>

# Aspect CTRM


<a id="org9fde1a5"></a>

## Persons

-   Lance Fogtman (business)
-   Nikita Levitskiy (head of product)
-   


<a id="org5317ec6"></a>

## history

2021

-   **AWS** migration and ION Cloud management
-   LNG advanced pricing and contract management
-   **Crude and refined products** standard packages
-   **UX** simplified reporting and workbenches
-   **Operations** truck tickets support

2022

-   **Carbon and emissions** commodity support
-   **Metals** innovations and workflow support
-   **UX** dashboards and usability improvements
-   **Shipping** Softmar integration
-   **Capital allocation** reporting
-   **T/T+1** close of day
-   **Risk analytics** FEA integration - risk metrics

2023

-   **Ecosystem** data rich and connected solutions
-   **UX** simplified trade, operations and back-office workflow
-   **Market data** distribution platform and price discovery
-   **Carbon** - use case diversity and ESG capture and reporting
-   **Risk analytics** FEA integration - pricing models
-   **STF** connectivity expansion - SGX, TT, LME
-   **Trade finance** and capital allocation - continued


<a id="orgaed8ee4"></a>

## TODO Ecosystems

Canonical model

-   Prices
-   Exposure
-   PnL
-   Positions
-   AR/AP
-   Accrual (начисления)

Others (already in):

-   DSC
-   Softmar
-   Clarus
-   Data lake
-   ERP

in prograss:

-   FEA - deep reisk analytics
-   Lab specs
-   Tanks
-   Truck/rack


<a id="org91f4294"></a>

## Covering the full value chain of Liquefied Natural Gas

NG:

-   Production
-   NG Pipeline

NG-LNG

-   Liquefaction

LNG

-   LNG Storage
-   Loading
-   Shipping
-   Discharge + LNG Storage + Reloads

LNG-NG

-   Regasification
-   Send out gas
-   Consumption
-   Storage

NG props:

-   Production forecast tools
-   Cargo loading program
-   Liquefaction tolling
-   model

LNG portfolio & cargo operations

-   Physical optionality valuation including extrinsics
-   Enhanced tools to manage boil off, heels, and bunker calcs
-   Track performance including charters and freight hedges

Downstream

-   Automated regasification process
-   Model send out & stored gass
-   Automate landed & tolling costs


<a id="org1ebf749"></a>

## What is Aspect CTRM?

-   129$per user per month
-   Commodity Trading Software and Risk Management
-   <http://www.aspectenterprise.com/>
-   <https://iongroup.com>

AspectCTRM is a Web, cloud-based SaaS software, which helps organizations across
 agriculture, oil and gas, bunker trading and various other sectors
 monitor multiple commodities, credit, market and operational
 risks.


<a id="orgc5009d4"></a>

## Features

Features include

-   trade capture, -
-   VaR reporting, - (Value-at-Risk) Reporting, estimates the potential
    loss of a portfolio over a specific time horizon with a given
    probability (usually 95% or 99%).
-   pre-trade analytics - analyzing market data and other factors to
    predict the potential outcome of a trade before it is executed:
    Evaluate trade opportunities, Assess market risk, Optimize trade
    execution, Reduce trading costs.
-   audit trail -  record of all changes in system
-   group management - Assign permissions and access levels, performance
-   energy corporations, OILspace, metals, Freight,

other

-   Custom User Interfaces - dashboards, reports, and data visualizations
-   RESTful APIs
-   “Client-Side Scripting”
    -   enhance user experience by enabling dynamic content updates,
    -   form validations
    -   interactive features without requiring full page reloads
-   Event Handling and Custom Logic
    -   automate workflows
    -   trigger alerts
    -   perform specific actions based on user interactions or data changes
-   Modular Development - deploy reusable JavaScript components
-   Third-Party Libraries - can connect jQuery, React, Angular - to enhance the functionality and user experience
-   Testing and Debugging - some tools and environment
-   Version Control and Collaboration - can integrate with Git. have it.
-   Integration: Oracle Cloud Financials, JD Edwards EnterpriseOne, Microsoft Excel


<a id="orgb493168"></a>

## interface

-   **System menu:** Reports, Accounting, Brazil
    -   Actions - workbanches to manipulate existing data: shipments, invoices
    -   Create - create new master data: Deals, storages, etc..
    -   tools - to create additional functionality
-   Search
-   User Tabs
-   **Node bar:** You are here: MP (Company) > Strategies
-   landing page


<a id="orgd6c50c3"></a>

## Objects and Root nodes

A record that characterise a document or an action.

-   Classes: Deal, Cost, Invoice, Payment, Bank document, Bank transcation etc.
-   Have inner state: initial and executed (completed, confirmed).
-   Asigned to several hierarhcies.
-   For every class exist a report.


<a id="org5c9212b"></a>

### Root nodes

-   Trader
-   Strategy - related group of deals
-   Product - underlying commodity
-   Location - related geographic region
-   Couterparty - customer or company engaged
-   Broker - groker engaged
-   Company - Legal entitiy inside your company it is assigned to
-   Book - “company department accoountable” - looks like a part of company


<a id="org6c9a57b"></a>

## Risk

VaR Value-at-Risk is a metric to assess the risk of your current portfolio.

-   expected values of future events that may be +/-.
    CTRM Commodity Trading Software and Risk Management

(Commodity Trading and Risk Management) - commodity trading, risk
 management, and supply chain management.

-   risks:  market risk, credit risk, and operational risk.
-   Compliance with regulatory requirements.
-   skils: commodity trading, risk management, supply chain management principles and practices.


<a id="orge82cb56"></a>

# Commodity Trading

part of Financial markets


<a id="org38b2ce8"></a>

## terms

-   **Asset:** durable good. Anything that provides a current or potential future economic benefit to whoever
    possesses or controls that asset. Something of economic value that's owned or controlled by a person,
    company, or government.
-   **Liabilities:** something that is owed to another person, company, or government. ex: loans, tax obligations,
    and accounts payable.
-   **Commodity:** a type of asset.
-   **Market clearing:** process by which “demand” balace with “supply”, so neither a surplus nor a shortage.
-   **Clearing service (clearinghouse):** intermediary between buyers and sellers in a commodity transaction.
    Process of settling trades, managing risk, and guaranteeing the performance of buyers and sellers in a
    commodity transaction. Types:
    -   Exchange-based clearing: Provided by exchanges, such as the Chicago Mercantile Exchange (CME) or the
        Intercontinental Exchange (ICE), which offer clearing services for trades executed on their platforms.
    -   Over-the-counter (OTC) clearing: Provided by third-party clearinghouses, such as the London Clearing House
        (LCH) or the Depository Trust & Clearing Corporation (DTCC), which clear trades executed outside of
        formal exchanges, directly with each other.
-   **Spot price:** cash price or current price -  for immediate (or short 1-2 days) delivery.
    -   **Delivery date:** Spot prices are for immediate delivery, while futures prices are for delivery at a
        specific future date.
    -   **Price risk:** Spot prices reflect current market conditions and are subject to immediate price risk, while
        futures prices are locked in at the time of the contract and are subject to price risk at the time of
        delivery.
    -   **Liquidity:** Spot markets are generally more liquid than futures markets, meaning it's easier to buy or
        sell assets at the current market price.
-   **Futures price:** a future date after delivery.
-   **Commodity price index:** index for some commodity, may be may be based on spot or futures prices.
-   **Commodity index fund:** fund whose assets are invested in financial instruments based on or linked to a
    commodity index.
-   **Cash commodity:** not derivatives, commodities that someone is buying/selling/trading.
-   **Derivatives:** evolved from simple commodity future contracts to many others.
-   **Exchage:** organized market
-   **Premises:** warehouse
-   **Metric tonne:** weight of oil and other petroleum products. 1 = 1,000 kilograms or 2,204.62 pounds
-   **petroleum products:** нефтепродукты
-   **FOB:** Most oil is sold either FOB (effectively priced at the loading port) or CIF (effectively priced at
    the delivery port). Exclude all insurance and freight charges.
-   **MT:** metric tons is a lot size
-   **kgs:** kilograms
-   **bbl:** barrels
-   **Lots:** number of units of a financial unstrument traded in one transactions. Lot - size of transaction
-   **price quote:** катеровка цены, ценовое предложение, latest price. Quoted price is only valid for a certain
    period of time.
-   **Spread:** is defined as the difference between the current bid and ask prices
-   **contingencies:** непредвиденные обстоятельства
-   **Clearing Broker:** 

-   **Executing Broker:** execute buy/sell orders on behalf of clients. They find the best prices in the market.
-   **Clearing Broker:** settlement of trades after they have been executed. Ensure that transaction is completed,
    includes transferring ownership of the securities and handling the associated cash flows.
-   **Financial statement:** formal records of fin. activities.
    -   **Consolided FS:** FS of a grpup in which the assets, liabilities, equality, income, expenses and cash flows
        of the parent company and it's subsidiaries are presented as of a single econimic entity. Type of report.
-   **revenue, income, profits:** something similar.
-   **income statement or profit and loss account:** one of financial statement of a company. Net income, result after all revenues and expenses have been accounted for.
-   **PnL:** day-over-day change in the value of a portfolio (value today - value prior day)
-   

links

-   <https://imperiumcs.com/commodity-markets-glossary-terms/>
-   <https://www.commoditiesdemystified.info/en/glossary>
-   <https://www.unitedfutures.com/glossary.htm>


<a id="org979f517"></a>

## free books

The Basics of Commodities Trading

CME Commodity Trading Manual 2006 <file:///home/ff/Downloads/ChickMan.pdf> <https://www.le.ac.uk/users/dsgp1/COURSES/DERIVATE/RESOURCE/ChickMan.pdf>

Commodities trading: Commodities Trading 101: Lessons from Trading Books <https://fastercapital.com/content/Commodities-trading--Commodities-Trading-101--Lessons-from-Trading-Books.html>


<a id="org9549537"></a>

## theory


<a id="org93ecb6f"></a>

### differences:

-   **Elasitcity:** Electricity(low) vs Gold(high) - said: “elastic demand”. Refers to how responsive the demand for a
    commodity is to changes in its price. Commodities with low elasticity have a stable demand, regardless of
    price fluctuations, while those with high elasticity have a demand that can change significantly with price
    changes.
-   **Deliverability:** Natural gas (high) vs Lean hogs (low) - how ease and speed with which a commodity can be
    transported and delivered to various markets.
-   **Substitability:** Coffee (high) vs Gasoline (low) - can be replaced by other products or
    alternatives. Commodities with high substitutability have many alternatives, making demand more responsive
    to price changes, while those with low substitutability have limited alternatives, making demand less
    responsive.
-   **Storability:** Animals (low) vs Aluminum (high) - stored for extended periods without significant degradation or loss of
    value. Commodities with high storability can be kept in inventory for long periods, while those with low
    storability require immediate use or processing.
-   **Exchange Prices vs Local Prices:** Natural gas at Henry Hub (stable) vs Natural gas at source (local
    variable)
-   **Timing vs Production:** Winter wheat (low sensitive to weather) vs Spring wheat (high sensisitve) - seasonal
    patterns of a commodity, some commodities have specific timing requirements, such as planting and harvesting
    seasons, which can affect their yield and availability.


<a id="orga765758"></a>

### Cash, Forward, futures, options

-   **Cash sales:** deliver to offline market and sell with the price for the day.
-   **Forward contracts:** P2P, Contract not standardized. Negotiated now for delivery later for specified price
    at the time of delivery. You are protected if prices fall.
-   **Futures contracts:** P2B. Contract standardized. (like forward) agreement to buy or sell a commodity at a
    date in the future. Buy or sell throught a brokerage firm that transacts the trade for you. You must deposit
    a “performance bound” (a small percentage of the contract value). **Specifies everythin but the price.**
-   **options on futures contracs:** P2P
-   **Option:** P2P, buyer purchases the right but not the obligation to buy an agreed quantity of a
    particular commodity or financial instrument (the underlying) from the seller of the option at a certain
    time (the expiration date) for a certain price (the strike price). The seller (or "writer") is obligated to
    sell the commodity or financial instrument should the buyer so decide. The buyer pays a fee (called a
    premium) for this right.
    -   **call option (to buy something at price):** The holder of a call option hopes that the price of the
        underlying asset will rise above the strike price, allowing them to buy the asset at the lower strike
        price and sell it at the higher market price later.
    -   **put option (to sell something at price):** gives the holder the right to sell an underlying asset at a predetermined price, known as
        the strike price. The holder of a put option hopes that the price of the underlying asset will fall below
        the strike price, allowing them to sell the asset at the higher strike price and buy it back at the lower
        market price later.

“sell forward contracts” - I get agreement to sell a commodity or asset at a future date, at a predetermined
 price.


<a id="org26da1a9"></a>

### other contracts

1.  swap

    derivative contract, s exchanging one type of cash flow for another. In commodity trading, swaps are
     used to hedge against price risks or to speculate on price movements.
    
    Ex. Suppose a farmer wants to hedge against a potential decline in the price of wheat. They enter into a swap
     contract with a bank, agreeing to exchange a fixed price of $200 per ton of wheat for a floating price based
     on the market price of wheat. If the market price of wheat falls to $180 per ton, the farmer will receive $20
     per ton from the bank, which will help offset the loss in revenue. Types of swaps:
    
    Types
    
    -   Fixed-for-floating swap: Exchanges a fixed price for a floating price.
    -   Floating-for-floating swap: Exchanges one floating price for another floating price.
    -   Basis swap: Exchanges a fixed price for a floating price, with the floating price based on a specific
        market index.

2.  TODO Exchange-traded commodities (ETCs)


<a id="org65f9ac3"></a>

### **Hedging**

(minimise or remove price risk) - by taking an opposite position in the futures market.

Example: Suppose you have a forward contract to sell 1,000 barrels of oil at $50 per barrel in three
 months. To hedge this position, you could:

-   Buy a futures contract: Buy a futures contract for 1,000 barrels of oil at $50 per barrel, expiring in three
    months. This would offset the risk of the forward contract.
-   Buy a call option: Buy a call option to buy 1,000 barrels of oil at $50 per barrel, expiring in three
    months. This would give you the right, but not the obligation, to buy oil at $50 per barrel, reducing the
    risk of the forward contract.


<a id="orgfb96cad"></a>

### categories

-   Energy (such as Coal, Crude Oil, Ethanol, Gas Oil, Gasoline, Heating Oil, Natural Gas, Propane)
-   Metals
    -   Base metals (such as Lead, Zinc, Nickel, Copper)
    -   Precious metals (such as Gold, Silver, Platinum, Palladium)
-   Agriculture
    -   Grains (such as Corn, Oats, Rice, Soybeans, Wheat)
    -   Softs (such as Coffee, Cocoa, Sugar, Butter, Cotton, Milk, Orange Juice)
    -   Livestock (such as Hogs, Live Cattle, Pork Bellies, Feeder Cattle)


<a id="orga385395"></a>

### open interest and Bull/Bear market

**Open interest** is a number of contracts outstanding at the end of each day. this number changes from day to day
 and gives us trand.

**Bull** One who expect prices to rise

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Prices</th>
<th scope="col" class="org-left">Volume</th>
<th scope="col" class="org-left">Open interest</th>
<th scope="col" class="org-left">Market Direction</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Rising</td>
<td class="org-left">Rising</td>
<td class="org-left">Rising</td>
<td class="org-left">Bullish</td>
</tr>


<tr>
<td class="org-left">Rising</td>
<td class="org-left">Falling</td>
<td class="org-left">Falling</td>
<td class="org-left">Bearish</td>
</tr>


<tr>
<td class="org-left">Falling</td>
<td class="org-left">Rising</td>
<td class="org-left">Rising</td>
<td class="org-left">Bearish</td>
</tr>


<tr>
<td class="org-left">Falling</td>
<td class="org-left">Falling</td>
<td class="org-left">Falling</td>
<td class="org-left">Bullish</td>
</tr>
</tbody>
</table>


<a id="org0f6dc19"></a>

## todo

Define commodities and their key features
Identify the major commodity categories
Discuss the drivers of the commodities in different categories
Undertake commodity trading strategies using futures and options
Explain commodity spreads and common spread trading strategies


<a id="orgeb4aded"></a>

## trading process

-   Trade matching: Verifying that the trade details, such as price, quantity, and delivery terms, match between the buyer and seller.
-   Trade confirmation: Confirming the trade details with both parties to ensure accuracy and agreement.
-   Margining: Collecting and managing margin deposits from traders to cover potential losses.
-   Risk management: Monitoring and managing the risk of default by either party, using techniques such as position limits, stop-loss orders, and margin calls.
-   Settlement: Facilitating the exchange of commodities and payment between buyers and sellers, ensuring that the transaction is completed smoothly and efficiently.
-   Guaranteeing performance: Acting as a guarantor for the trade, ensuring that the buyer and seller fulfill their obligations.


<a id="org5940af2"></a>

## clearing services

Clearing services offer several benefits to commodity traders, including:

-   Reduced counterparty risk: By acting as a guarantor, clearing services minimize the risk of default by either party.
-   Increased efficiency: Clearing services streamline the trading process, reducing the time and effort required to settle trades.
-   Improved transparency: Clearing services provide a transparent and auditable record of trades, helping to
    prevent errors and disputes.
-   Enhanced risk management: Clearing services help traders manage their risk exposure, using techniques such
    as margining and position limits.


<a id="orgf08e23b"></a>

### notable clearing services, electronic exchanges:

-   CME Clearing: (largest in the world) Provided by the Chicago Mercantile Exchange (CME), one of the largest
    and most well-established clearinghouses in the world.
    -   CBOT - It is a subsidiary of the CME Group, focuses on agricultural commodities.
-   ICE Clear: Provided by the Intercontinental Exchange (ICE), which offers clearing services for a range of
    commodity and financial markets.
-   LCH.Clearnet: A leading independent clearinghouse, which provides clearing services for a range of markets,
    including commodities, currencies, and interest rates.
-   DTCC: The Depository Trust & Clearing Corporation, which provides clearing and settlement services for a
    range of financial markets, including commodities.


<a id="orgecfad7c"></a>

## Resources

-   **CME Group:** <https://www.cmegroup.com> derivatives exchanges - trading in futures and options + real-time data
-   **ICE (Intercontinental Exchange):** <https://www.ice.com> Clearing + trading and clearing services + real-time data

-   **Bloomberg:** real-time data <https://www.bloomberg.com>
-   **Thomson Reuters Eikon:** real-time data  <https://www.thomsonreuters.com/en/products-services/financial-markets/trading-platforms/eikon.html>
-   S&P Global have: ratings, Market Intelligence, Dow Jones Indices, Engineering Solutions, Capital IQ
    -   **S&P Global Commodity Insights:** <https://www.spglobal.com/commodityinsights> real-time data + most used for analysis
    -   **Platts:** <https://www.spglobal.com/platts> real-time data for  energy and commodities market.
-   **Argus Media:** <https://www.argusmedia.com> : real-time data
-   **Refinitiv:** <https://www.refinitiv.com> - real-time data and analytics
-   Cargill: <https://www.cargill.com/> - agro-commodity trader and processor + real-time data
-   World Bank and IMF Reports: offer research and reports on global economic trends, including commodity
    markets, which can be valuable for risk assessment.
-   Trade Associations: Organizations like the International Energy Agency (IEA) and the American Petroleum
    Institute (API) provide industry reports and statistics that are useful for understanding market dynamics.
-   News and Research Websites:
    -   Seeking Alpha: Offers insights and analysis on various commodities and markets.
    -   MarketWatch: Provides news, analysis, and data on commodities and financial markets.
    -   Investing.com: Offers data, news, and analysis for various commodities, including real-time price updates.
-   Academic Journals and Publications: Research published in journals such as the "Journal of Commodity
    Markets" and the "Energy Journal" can provide valuable insights into commodity pricing, trading
    strategies, and risk management.
-   Social Media and Networking Platforms: LinkedIn and Twitter can be useful for following industry experts,
    analysts, and news outlets for real-time updates and insights.

News and Research Websites

-   Bloomberg: www.bloomberg.com - news and analysis
-   Reuters: www.reuters.com - news and analysis
-   CNBC: www.cnbc.com - news and analysis
-   Seeking Alpha: www.seekingalpha.com - news and analysis
-   Investing.com: www.investing.com - news and analysis

Regulatory and Industry Organizations

-   CFTC (Commodity Futures Trading Commission): www.cftc.gov - regulatory agency
-   SEC (Securities and Exchange Commission): www.sec.gov - regulatory agency
-   ICE (Intercontinental Exchange): www.theice.com - industry organization
-   CME Group: www.cmegroup.com - industry organization
-   National Futures Association: www.nfa.futures.org - industry organization

CME Group, ICE, and Refinitiv.


<a id="org0190a24"></a>

## Exchanges or Exchange Traded Commodities.

<https://en.wikipedia.org/wiki/Commodity_trading#Commodities_exchange>
<https://en.wikipedia.org/wiki/Commodities_exchange>

Most ETCs implement a futures trading strategy.

-   ICE Futures Europe (IFEU)
    -   Electronic trading platform
    -   Clearing and settlement
    -   Market data


<a id="org7a30cbe"></a>

## INCOTERMS

is a set of standardized terms used in international trade. developed by the International Chamber of Commerce
 (ICC).

Categories

-   E-terms: These terms (EXW, FCA, FAS, FOB) refer to the seller's obligations and responsibilities.
-   C-terms: These terms (CFR, CIF, CPT, CIP) refer to the buyer's obligations and responsibilities.
-   D-terms: These terms (DAT, DAP, DDP) refer to the delivery of goods to a specific location.

Common INCOTERMS:

-   **FOB (Free on Board):** The seller is responsible for delivering the goods to the buyer's ship, and the buyer
    is responsible for the costs and risks of transportation.
-   **CIF (Cost, Insurance, and Freight):** The seller is responsible for delivering the goods to the buyer's
    destination, including the costs of transportation and insurance.
-   **CFR (Cost and Freight):** The seller is responsible for delivering the goods to the buyer's destination,
    including the costs of transportation, but not insurance.
-   **EXW (Ex Works):** The seller is responsible for making the goods available at their premises, and the buyer is
    responsible for the costs and risks of transportation.


<a id="orgf1fa86f"></a>

## courses

<https://corporatefinanceinstitute.com/course/commodities-fundamentals/>

