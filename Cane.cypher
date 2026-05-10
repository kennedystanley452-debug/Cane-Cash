export default function CaneCashDashboard() { const quickActions = [ "Send", "Request", "Pay Bills", "Top Up", "Bank Transfer", "Scan QR", ];

const features = [ "Customer Care Cane AI", "Crypto Currencies", "Currency Converter", "Cane Charity", "Biometric", "Voice Lock", "Fingerprints", "Passcode", "Face ID", "Password", "QR Code", "Chat Room", "Advertising Board", "Post Ground", "Stories", "Market Place", "Admin Control Room", "Settings", ];

const recentActivity = [ { title: "Payment Sent", user: "To John Doe", amount: "-$150.00", color: "text-white", }, { title: "Cash Received", user: "From Jane Smith", amount: "+$500.00", color: "text-green-400", }, { title: "Bill Payment", user: "Electricity", amount: "-$75.50", color: "text-white", }, { title: "Top Up", user: "Mobile", amount: "+$50.00", color: "text-green-400", }, ];

return ( <div className="min-h-screen bg-black text-white p-4 md:p-6 font-sans"> <div className="grid grid-cols-1 lg:grid-cols-3 gap-4"> {/* LEFT SIDE /} <div className="lg:col-span-2 space-y-4"> {/ HEADER */} <div className="flex items-center justify-between"> <div className="flex items-center gap-4"> <div className="w-20 h-20 rounded-full border-2 border-pink-500 shadow-[0_0_25px_#ff0080] flex items-center justify-center text-center text-pink-400 font-bold text-xl bg-black"> Cane <br /> Cash </div>

<div>
            <h1 className="text-3xl font-bold">
              Hello, Cane! 👋
            </h1>
            <p className="text-pink-400 text-lg">
              Welcome back
            </p>
          </div>
        </div>

        <div className="flex items-center gap-6 text-pink-400 text-2xl">
          <span>🔔</span>
          <span>📷</span>
          <div className="w-14 h-14 rounded-full border border-pink-500 shadow-[0_0_20px_#ff0080] overflow-hidden">
            <img
              src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e"
              alt="profile"
              className="w-full h-full object-cover"
            />
          </div>
        </div>
      </div>

      {/* BALANCE CARD */}
      <div className="relative rounded-3xl border border-pink-500 bg-gradient-to-br from-[#12000d] to-black p-6 overflow-hidden shadow-[0_0_35px_#ff0080]">
        <div className="absolute right-10 top-8 text-[180px] font-bold text-pink-600 opacity-20">
          C
        </div>

        <p className="text-gray-300 text-xl">Total Balance</p>
        <h2 className="text-6xl font-bold mt-3 text-white">
          $12,450.60
        </h2>

        <p className="text-pink-400 mt-2 text-lg">USD</p>

        <div className="flex gap-4 mt-8">
          <button className="px-8 py-4 rounded-2xl bg-pink-600 hover:bg-pink-500 transition text-xl font-semibold shadow-[0_0_25px_#ff0080]">
            Add Cash
          </button>

          <button className="px-8 py-4 rounded-2xl border border-pink-500 hover:bg-pink-500/10 transition text-xl">
            Cash Out
          </button>
        </div>
      </div>

      {/* QUICK ACTIONS */}
      <div className="rounded-3xl border border-pink-500 bg-[#080808] p-5 shadow-[0_0_25px_#ff0080]">
        <div className="flex justify-between items-center mb-6">
          <h2 className="text-2xl font-semibold">Quick Actions</h2>
          <button className="text-pink-400">View All</button>
        </div>

        <div className="grid grid-cols-3 md:grid-cols-6 gap-4">
          {quickActions.map((item, index) => (
            <div
              key={index}
              className="flex flex-col items-center gap-2"
            >
              <div className="w-16 h-16 rounded-full border border-pink-500 flex items-center justify-center text-2xl text-pink-400 shadow-[0_0_15px_#ff0080] bg-black">
                ✨
              </div>
              <p className="text-sm text-center">{item}</p>
            </div>
          ))}
        </div>
      </div>

      {/* INVITE */}
      <div className="rounded-3xl border border-pink-500 bg-gradient-to-r from-[#180010] to-black p-6 shadow-[0_0_25px_#ff0080] flex flex-col md:flex-row justify-between items-center gap-4">
        <div>
          <h2 className="text-3xl font-bold">Invite & Earn</h2>
          <p className="text-gray-300 mt-2 text-lg">
            Invite friends and earn amazing rewards!
          </p>

          <button className="mt-5 px-8 py-3 rounded-xl bg-pink-600 hover:bg-pink-500 shadow-[0_0_20px_#ff0080]">
            Invite Now
          </button>
        </div>

        <div className="text-[140px] text-pink-500 opacity-80">
          🎁
        </div>
      </div>

      {/* RECENT ACTIVITY */}
      <div className="rounded-3xl border border-pink-500 bg-[#080808] p-5 shadow-[0_0_25px_#ff0080]">
        <div className="flex justify-between items-center mb-6">
          <h2 className="text-2xl font-semibold">Recent Activity</h2>
          <button className="text-pink-400">View All</button>
        </div>

        <div className="space-y-4">
          {recentActivity.map((activity, index) => (
            <div
              key={index}
              className="flex justify-between items-center border-b border-pink-500/20 pb-4"
            >
              <div className="flex items-center gap-4">
                <div className="w-12 h-12 rounded-full border border-pink-500 flex items-center justify-center text-pink-400 shadow-[0_0_15px_#ff0080]">
                  ↗
                </div>

                <div>
                  <h3 className="text-lg font-medium">
                    {activity.title}
                  </h3>
                  <p className="text-gray-400 text-sm">
                    {activity.user}
                  </p>
                </div>
              </div>

              <div className="text-right">
                <p className={`text-xl font-bold ${activity.color}`}>
                  {activity.amount}
                </p>
                <p className="text-gray-500 text-sm">
                  Today
                </p>
              </div>
            </div>
          ))}
        </div>

        <button className="w-full mt-6 py-4 rounded-2xl bg-gradient-to-r from-pink-700 to-pink-500 shadow-[0_0_20px_#ff0080] text-lg font-semibold">
          See All Activity
        </button>
      </div>

      {/* BOTTOM CARDS */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
        {[
          "Savings",
          "Cane Card",
          "Goals",
          "Invest",
        ].map((item, index) => (
          <div
            key={index}
            className="rounded-3xl border border-pink-500 bg-[#080808] p-5 shadow-[0_0_20px_#ff0080] flex flex-col justify-between"
          >
            <div>
              <h3 className="text-xl font-semibold">{item}</h3>

              <div className="text-6xl text-pink-500 mt-6 text-center">
                {index === 0
                  ? "🐷"
                  : index === 1
                  ? "💳"
                  : index === 2
                  ? "🎯"
                  : "📈"}
              </div>
            </div>

            <button className="mt-6 py-3 rounded-xl bg-pink-600 hover:bg-pink-500 shadow-[0_0_20px_#ff0080]">
              Open
            </button>
          </div>
        ))}
      </div>
    </div>

    {/* RIGHT SIDE FEATURES */}
    <div className="rounded-3xl border border-pink-500 bg-[#080808] p-5 shadow-[0_0_30px_#ff0080] h-fit">
      <div className="flex justify-between items-center mb-6">
        <h2 className="text-3xl font-bold">All Features</h2>
        <button className="text-pink-400">Edit</button>
      </div>

      <div className="grid grid-cols-2 gap-4">
        {features.map((feature, index) => (
          <div
            key={index}
            className="rounded-2xl border border-pink-500 bg-black p-5 flex flex-col items-center justify-center text-center min-h-[140px] shadow-[0_0_20px_#ff0080] hover:scale-105 transition"
          >
            <div className="w-16 h-16 rounded-full border border-pink-500 flex items-center justify-center text-3xl text-pink-400 mb-3 shadow-[0_0_15px_#ff0080]">
              ✦
            </div>

            <p className="text-sm md:text-base font-medium leading-tight">
              {feature}
            </p>
          </div>
        ))}
      </div>
    </div>
  </div>

  {/* BOTTOM NAVIGATION */}
  <div className="fixed bottom-0 left-0 w-full bg-black border-t border-pink-500 shadow-[0_-5px_25px_#ff0080] px-4 py-3 flex justify-around items-center z-50">
    {[
      "Home",
      "Activity",
      "Pay",
      "Card",
      "Profile",
    ].map((item, index) => (
      <div
        key={index}
        className={`flex flex-col items-center gap-1 ${
          item === "Pay" ? "text-white" : "text-gray-400"
        }`}
      >
        <div
          className={`flex items-center justify-center ${
            item === "Pay"
              ? "w-16 h-16 rounded-full bg-pink-600 shadow-[0_0_25px_#ff0080] text-3xl"
              : "text-2xl"
          }`}
        >
          {item === "Home"
            ? "🏠"
            : item === "Activity"
            ? "📋"
            : item === "Pay"
            ? "$"
            : item === "Card"
            ? "💳"
            : "👤"}
        </div>

        <p className="text-sm">{item}</p>
      </div>
    ))}
  </div>
</div>

); }
