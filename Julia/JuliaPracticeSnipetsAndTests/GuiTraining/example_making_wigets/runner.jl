using Blink
using WebIO
using Interact
w = Window()

# making input types
options = Dict(
    "Central Moments Space" => "CMS", 
    "Non-orthogonal Central Moments Space" => "NOCMS",
    "MRT" => "MRT",
    "BGK" => "BGK")
methodType = dropdown(options)
# relaxationSet
MRTset = Dict(
    "S1" => "MRT_Guo",
    "S2" => "MRT_Lalle",
    "S3" => "Pradipto",
    "s4" => "MRT_Khatoon",
    "S5" => "MRT_EAslan",
    "S6" => "MRT_Guo2"
    "test" => "MRT2"
)
CMSset = Dict(
    "Geire set" => "Cas_Geier",
    "Lallemand set" => "Cas_Lalle",
    "Chavez set" => "Cas_Chavez"
)
NOCMSset = Dict{
    "S1" => "CMs_NON_Orthogonal"
}
BGKset = Dict(
    "BGK" => "BGK",
    "Non-equilibrium B.C." => "BGK_NEBC"
    "Non-equilibrium_Modified B.C." => "BGK_MNEBC",
    "Semi_Non_equilibrium_Boundarycondition" => "BGK_SNEBC"
)



# input mesh size
N = textbox("Node number")
Grid = parse(Int, N[]) # use try catch e to make it work

# selectables
errorlimitation = textbox("Convergence criteria")
ErrCalculationSteps = textbox("Error claculation intervals")

IS_IT_A_VALIDATION_RUN = checkbox(true; label = "Set a maximum iteration number")
MAX_UnSteady_Itteration = textbox("Maximum iterations")

ui = STDOUT_Error_Report_Size = dropdown(Dict("Short format" => "Short", "Long format" => "Long"))

PrintOutput = checkbox(false; label = "Save the transient result")
PrintSteps = textbox("Saving intervals")

CSVoutput = checkbox(false; label = "Save CSV files")
CSVoutputFrequency = textbox("Saving intervals")

CenterLinePrint = checkbox(true; label = "Save CSV files")
CenterlinePrintFrequency = textbox("Saving intervals")

DistributionFunctions_Out = checkbox(false; label = "Save distribution functions")
CenterlinePrintFrequency = textbox("Saving intervals")

DistributionFunctions_sum_Out = checkbox(false; label = "Saving total mass")
DistributionFunctionsSumFrequency = textbox("Saving intervals")

ui = ErrorPrintingInInFilePermission = checkbox(true; label = "Saving Errors in file")

# Boundary Condition
uw_top = textbox("Lid velocity")

## =============================
#           Layout
## =============================
scp = Scope()
InteractBase.slap_design!(scp)
# scp = Scope(imports = ["https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css"])









scp.dom = ui
body!(w,scp)
















# quick make
# a = node(:div,
#     widget(1:10),                 # Slider
#     widget(false),                # Checkbox
#     widget("text"),               # Textbox
#     widget(1.1),                  # Spinbox
#     widget([:on, :off]),          # Toggle Buttons
#     widget(Dict("π" => float(π), "τ" => 2π)),
#     widget(colorant"red"),        # Color picker
#     widget(Dates.today()),        # Date picker
#     widget(Dates.Time(10)),         # Time picker
#     )