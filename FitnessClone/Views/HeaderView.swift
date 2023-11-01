import SwiftUI

struct HeaderView: View {
    let myFormat = Date.FormatStyle()
        .weekday(.wide)
        .day()
        .month()
    var body: some View {
        VStack(alignment: .leading) {
            Text(Date(), format: myFormat).font(.system(size: 15)).fontWeight(.semibold).textCase(.uppercase).foregroundColor(.gray)
            HStack {
                Text("Summary").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
                Spacer()
                Image("avatar_empty").resizable().frame(width: 40, height: 40).clipShape(Circle())
            }
        }
        .padding().background(.black)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
