import 'package:flutter/material.dart';
import 'carrinho.dart';
import 'addprojeto.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<bool> buttonEnabled = [true, true, true];

  @override
  Widget build(BuildContext context) {
    List<CarrinhoIntel> carrinhos = [];

  void adicionarCarrinho(String nome, String preco, int index) {
    setState(() {
      carrinhos.add(CarrinhoIntel(key: UniqueKey(), nome: nome, preco: preco, index: index));
      buttonEnabled[index] = false;
    });
  }

  void removerCarrinho(Key key, int index) {
    setState(() {
      carrinhos.removeWhere((carrinho) => carrinho.key == key);
      buttonEnabled[index] = true;
    });
  }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFEBDFCC),
        appBar: AppBar(
          title: const Text('Shoppe Nerfada'),
          backgroundColor: const Color(0xFFB10C43),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildFaixa(),
              Container(
                height: 32.0,
                color: const Color(0xFFB10C43),
                child: const Center(
                  child: Text(
                    'Atividade E-commerce Flutter',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEBDFCC),
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Container(
                color: const Color(0xFFEBDFCC),
                child: const Center(
                  child: Text(
                    'Seus Produtos',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProdutoContainer(
                    'https://i0.wp.com/bilharmais.com.br/wp-content/uploads/2020/09/7932ed7037c959bfb3831b40caf2049c.jpg?fit=850%2C850&ssl=1',
                    'Tabuleiro De Xadrez Da Cleopatra ',
                    '50.200.00',
                  ),
                  buildProdutoContainer(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFhUYGBgaGBkYGRkaGBkZGhgYGBocGhgYGhgcIS4lHB4sHxgaJjgmKy80NTU1HCQ7QDs0Py40NTEBDAwMEA8QHxISHjErJCE0NDQ0NDQ0NDQ0NDQxMTY0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NTQ0NDE0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAABAAIDBAUGB//EAEYQAAEDAgMEBAoIBAYBBQAAAAEAAhEDIQQSMUFRYZEFInGhBhMyUoGSscHR8BQVQlNictLhFiOCokNEk7LC4vEHM1RjxP/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACsRAQEAAgEDAwIFBQEAAAAAAAABAhESAyExE0FRBGEycYGRoQUUIvDxFf/aAAwDAQACEQMRAD8A9KKCUpEr0uBpTCnymkIhqCJQQJBFyCoUppCckgahKcmlRRlAogIFA0JEJyaqGkJFEpFQIJrwikSgZKKUJBUJJFJA0oEJyBQNQhEpIGQknJINZAhCYQzKIRCYVIUwoGkIFPQhAyEYRKARQhCE4oIAmp6EIEmlFBAk0pIFAUEmlGEDYShOQQNIQT4TXNVARQRQBBOQKBpQRQKAJIpKDSco3KUhMcED3JkIhKEGVien6DHuY5zszdQGOdsm0a63jRV2+F2D+8PqP/SuG6deX4mqdQXmJ7iNxVE4eF48vqLL2ejHoyx6U/wmwoAJqEA6HI+OeXVNb4T4P74eq/8ASvPy2wGwIOaNw5Ly3+o2Xwz6eL0P+JcJ9+3k74Jw8IsIf8wzv+C8zc5u0t46en296s4WnQM+MdlMtiIuCYdsPCFrH6+5XWjhj93oY8IMJ/8AIp+siOn8Kf8AM0vXauAdSw0S132RYkC5mQSGnSG223vZNdgsPse3V+oIEAO8XeNpaAfzDit/3t+J+6cMfu9E+ucMf8xS9dvxS+tcP9/S/wBRnxXmtLDUi0Fzg12cD+mDJgDXTbtVk9HYeT/NHbGnk7rnV2gvGxWfXWzev5OGP3ehfWNH76n/AKjPiiMZTP8AiM9dvxXmzOj6Re4FwaAJBkEHSRIPbomYnAUmgwcxzuFojKACHAg7Z7in9/qb1/Jwny9QZXZsez1h8VJ4xuxzeYXkP0dkeQeRTvozNjeYKz/6OPxV9PH5euiN45ohq8edhW7kPo24f3FWf1HH4T058vYsqRavHKjHBpIc4Hg4qozFVL/zH2/G74rrh9ZjlNyNTo78V7U5kILxSp0hXGleqOypUHvXsXRuJ8ZRp1PPYx/rNBK9HT6syYz6fFZQRQK6uYFBEoIAkkkg1ISMJEIKIEQmVn5WuduaTyEqUKn0w/LQeeEcyAs5XUtaxm7p5m9suceJSczkrLSXHMYJncB7E2roTuBXx88tbe/2VFE8O3jl+6eHKs6iN558QdvEd68E+7gTmAm7Qd/VO68d3JW2GgYLqTpgaF0Q10kXM6aX1CpuY0DWBYkkjZvUeX808HDt9O5dccteBdc2i4jqHQyDmjNEt26ZyfQY1BJdUZhpGVrwC85t8agjjcnjKoZbaug2s4c7dpPyFcp4ZhaZrEE2IcDa4kgg7nG23Jpdalt7RBc3DQAG1I60C23PfS1i3v4Ks9jb5Ww2zjLiTI26cArH0Zgcf50wCdJBJBdAvsgNnimuwjQxrhXklvki5Bga34aq3d+BXFNu4A/mO6D7EXMBM2nb1tlr6diOa329SeN5trx7kGFw1LjHDXsiy57qrdHC0CBne4GdgmwNjx1M9o4hGrhqGUltR+bKbaTJvJHATPsVakwlwbnIuLkWidpnS/cVbHR7tPHs2G5jYJG4a9y3LbO2kBuFoTPj3WO6ZHWi0SbBvYXbLKQUKX3v9hF4mOcCePBUA14Nn3ts0I15oQ/zu4a/Nlm5S+0U5zbELHov6xBGuxbZKx6zIcfzGF1+ly8x0wMrMXpngTis+EYNrC9h9DpHc4LzZ+m9dd4AYqG1WHzmvHpBa7/a3mvo9DLWTPWm8XeNRcoab5UpXueQEkE6FQ1JOhJBpFCEUoUQWtWR4UvihExJudbae0hbDVi+E7MzCIJho016zv8AosdT8Nbw/FHEUT8hV8S6x+dqtxE8FTrvlwBMAmJAmJ4SLL5GWPLce2+FUBRHVO6TPinBmcudla4wMoaHDMBJNzljcL7VAyOt/MHlPAJIiGloa6dIJJjgNq4z6W63tz4+yRwU+Gw4dPWY2I8q0zMkW+ZVbx7W2Ls4FpBuQdTO/SNyg+kAvgOMQdp22B9/oVn02UODZw+DZllzmEloIAfBbIJuMtzIFp2cURhaQMODTJdGV7bACRJ2WEejjbFdiYAGYzcTOul/ag3FTIm2w7vjchdJ0spPEThfluHAUg2+UuhgltRtiYGhGgMns7E5uAoyG7YLhL2wJnKJgQRAmeQmBgsqOzgF3yZj2KHFVHgsDXmTrpsKvpXfiHGukZ0dTOYAaPygZ2AEANM98DZZIdHMmOtfS7NJa0ye1w4QCsjD4fESDke9uWSQwwQZgypjnbZ7HMMGMzS2TBjXVZyw17T914Vo1OjGEdRr81ozFmW8W1nb3hVX9Hua3MQIG5wMXG48Qi7JlJns+e1V31RFjFjsk2E2XO4cvE1+pwvybliyAUdDFN6pc6ZBBBAF73t6FbqFsCImwMTAJFrnWdVzvQyi8KgeVmYww/tA+e5aGIrQOIWViKuYgmN3D0rt0elljlurMbKdTqAg8CtXwYxIZX4Oa5vsd/x71jNgTaN/p+e9Pw1QhzXbiOS9mPbLa5d5p69g6khXguX6CxeZoXSUXr6GF3HiymqkTkwlPW0BJKEkGknAJqSiHgLNx9POKnaBp5oB9pK0mqiMSwNubuLjABOrjGg3Lnl4bx8uDqsglZOJnO2Bedy6fpehle4xAJJGzVc/hmh2IYL2I3+cBs7V87KatezHvpHjsrX4qtlDnMc1jMwlrTDWZiDYkAGAdsKIOrsGfx7ycuYtc8ua62hYZBbwiyh+sgx+IZUZnp1KlTMAcrmkPMOa4jWwsdw0UWIfSZIL65FhkLGNde4aXh5jUfZ9CY45a1/ultnlp4Om36RRqMblbVY9zmDySWFpnLobn5uqAq1Po9U4rMerlpZ+tUNVwNmu1DREmbCCNtxhel2mpnqNeA1hp06dMNIYw/ic4EnUkxc7tBF0axrab6T2vdRfBYWhoex+xwaTG6RPvlxuPn7Ly2LMU9mDY9r4f43IXQC7IGPcGyROwJ/RVT6SXUqrQXhpcyo1gDgQdHZQJbN5OyZUT20xh20nPq9WoXlwpNM2LWtjxmlyfTwVfDYttJrxRzl9RjmF7wGZGO8rIxrjLiJGYm17Tda47xv59md9/wBCwmGeWNIpnPnFqjXAOZlJ6pdAJkOm8xptVnEsZkHi2OdmNSCGOd1Q5sEON8oJcAY0ibqHDEt8Q4MnJnHlDrF5d+ExGY75U9J7msALJhj2EjIAc5DgcmTLaNNqW9yJsDQc7BVm5XFzarAWwZGV1+rEiMyGEGTDVhVLmszEUGOJE1XR1msO4dYnQf1Xkwr2Nw9ZnjQx9R7XNaGvsQ5pMuawAeSbC14TcB0jZ1HE530ZjUl1Mk2cGk3AJ7dx2Hnq9/z21vx+RmJAbhqdZjA173uaZJc0ZBoGukXIOsqxj8EyqSyiMlZjGPDLBtZr2Ne4t/EMxtw3aDH0qYw3imVg8NqF7SAAYIcIcxzg+etsbFlUxDw9zHMc/MxjGFxaGkOZYOaWuOzLyU1fP5mw6Owwq02Me0Md9JFJ7sjWvDchcGmRIMg8TF0RXJeWspsawFwa0sa8w2QC8ulxMC5kX0hXq2Nc5mcsjENfTfmAGR+SRmcBo7K4ggeiFSx7Kb3GoxzqLiczmODnNDzcuY9gJub3AVxytt2XWux1NjHtq1xRDnNazLSObxYdDQ9xAOZwnOQJv6Fm1sQx9N4NFjHy0tczOBZwzNLHOIBib8FpYzpd4qCpSeRFNlN5IlpcM8tLXDrNIG0b0mV6GJdkfT8VVdYOpz4t5NvIM5TwkjsVlsm7/wAO1uoxBqOR9yBanEEFzXeUxxae1pII5yn1NFv3HWeDOIkD0FdrhnWXm/g1VgxxI9/vXoWCfZe7pXcePqTVXk9pTAiF2cz5STZSQaiSICMLAFR0NcdwJ7k6kyGgDYAOSjrDqxvc0d8nuBVrYs5NYuW8KWRBjygd8iNq4pj303Z2sY473teSOwBwAPGNi7LwmqkkAiYn4SuNr4gdYTcW5/JXh6l/y7PVhOzONfK8H6NhyZzSRWN9fvYPpTK1DOXkumQHzN8xc0uMbzJ5lRV6nXAG494hT03sIALMzhxNwRcW4TsUtvlpTo0CQ/KZyFhBNrF5Bb+aCB6CtmvReR1CGnK4QQD1iG5TpaIPwKgwWHbkzEk3sevliYBa0g21kytEst5QmeMexcupl3XGK5w7jNwPKjhfq2LbRff8MQYU6jab+jNJ04hdBXrBoF5l2Wb2nbpvXOmjYkGevMRIsCL7/wBlenaWLWDY+BLhlDwD3Ts3lWn0XnPlcLOaQCBoKd/TmKzaDCBGa2abi8wBrPGVZYw5ndY2ve5iG2mfwRO4lXKd1R0mOeRrYw7TTboOCjqh8u0nql2lwGtmLbwe5S06cudfL1886TM27LlJ1AkuJcbnboIJEa6Rl5Sm+4lpsORwPlmcpttEt4bIUNBry5zREWAmNRBcDbc08k5jC0zMggW3QP8AyVboWhxFjB9NxtWbdGkjQ/KCAJEjZciMv9MAztUn0dzw/q9b7OmUnNYRqCW79um5SMdsNpAg7A4cd1+RCsNqFjSXWPlQXGCYIAEAg66HeuW6umJiKJpuc7I2ox0tc12aHZSDPVIIIIkFUqWMFNwfTo5XjyHF5exh2ODC2SRslxE3g6LTxNWRcniN9tTxi3JZsjPsgi3v9i7Y5du7NirhqZhxJkySTe5Nyb8UC21/mVoNcIBCoVbOVmW6vhY6EqZXx2HlY+1ekdGvkBeWYV+WoO2OenfC9H6Fqy0L3dGvP1Y6NieoqRspQvS84JJySDVCcE0JBQDLL2D8zuQj/koOk+km0+rGYkaA+21lYawue4AxDQJiYzEzA32Cq9IYJjGEgkmIk3J2QQBf52Ljnv2dMdOT6YxJecwG6QLAbu0riXulxExJJJ4BxXRdJPMmTpMgkGN+lguSqVC3K/bqO3t2bV5ZN2vR4ibGsynMDw03CZ7NeSkw+La1kGmx15JMh0CLBwuB1e9QUqrX+WDNwCCd+nJQ4mg5ljfcdhCSey7bHReOa/I4NyvnWM3WEZozGwIDjBP2iNgWvhqrC0uyDLmyg5pmDJ8kawQNdFxtB72OIadxvsO8cZXR9AYkva8OIzEiZMB1yY2wZ3ALl1sbJtcb7JulcTTAb/LE5xtd50xM7ur6Ssx9B2Us8SWvNxcucS3M13Vjzg7TdGxa/SnR7ngBjspuQ0iHEhsm2pGsTqsfEdJ1s2Z7TmhzSajZt4w1IjQQ8yL2gDROnZYXyiw1duVrXUtJJde81Np3R1VaFQQCKcknICM3lZXCCPOkgx+FV6PSdYhjC4EB5fdoPWzOcSTul0wbWG5Kr0pUBs4H+YKhOUdZ7coznlJG2SVuybO6Wg4F7x4q8G0u6kZpn1m6+YN6L6mdzctIxmLsozHOJa6BabCLjzp2qGnj3tean2rtFhF+rEaEBo07J1QZ0jUytbmENBYAQPILWAj+xvJTUErnhzAG0iC7Qw4yGTmiddk7oU1TEMykZBqYvoCBEAc/Tedtep0hVJZJDjmqEDKL+NkP01nO5WqOCJ1kWYI3Eggkn7IBa6eSxlqLFzCVmvAPiurmMdYxZ3VE8JDTwdOxM6U6Qbma3JMODnguJzODQMnHbfjwUWLr5JDYDrgmMuTyQ5rS2ztDfisuodT+8rEm7tU2LxDHQWsyDrGAZ2kgDsBA9CynvAIMjaLm+n7q09uh2XHP5PNZWKYBE7+5dccdpa0C8ERyVWo4So31ZUT6plamJsX1MruyCPaF6B4PVpaPmy87qP0PzZdd4K4iWt5cjHuXfp9nLN6Fh3WVkFUcG+yuwvXHlp0pISkqNZqITApGqIWBMl53vIH9LQ0/3BypeEDz4sgGJO+5VvA1A2k1x1cHPjacxdUIHNcr4S9MMFiTYugNI2hsG9tQ4TszTeFwzvZ2xndxvSjiGOvsPZusdqwKwBcBrAH7rW6Sql2YltjYN2cNZOzasoUXFxIvFieS4R2pMiQPnZ8FYpVgRkeMzTcbweBVZ1nAxtUtWkYFtUs2QzF0y10nRwsdhWn0G+M+omPeqoktyvBE7eOwhXcE4tEH5+ZKxn3x01PLZqYoCwktMEhx1g6T86p9Oox4M2gEmRZskQGlvDfKzWVRfs7U4V8ptBsRBFr7QN/Febi2GPwNMsOWWklpBt15ubA2iNPesh2BcT1T2bZOwAcZV+rUkzvOzRX3BjLsqadt90QN2w/utzKyJpk1sKRlGoDgCBcucbvI2HSOyFcZhXukPJDCRlzANAO2DbLaRbepGVs5cH1C0C4vrx47LceCqePuNoaRred/osm7VWqWRmusaNMwQ4uy5z9mCBI3JuGcH5mhwYwAwJA4w5x8oTJjiVWxFaSTABMabALe5Vi/91nWwaz5cSDYkxI2bFEeXYmucg59lvQFVttVn44WCtVa1lnPJJM6LpjKlNYdhTCnuaU0tXRkHaLa8Fa8OLeIPMR7u9YROoV3oSrlqDjb3+5bxYy8PWMBUsFqtK57oypLQt2i6y9WN7PPlEySCS0y2WqHG1MrHu06p5xA71KFWxgkMb51Rg9DXZ3dzCsXwTynrdHFzQM3VaAA0W0EXJ1sNLLy/wAIXddwF8pv+y9R6bxfisO9+hiB2m37+hePYqvmcSvP1Lp6On3V3vzeUI+KWH09KqFxc4zpoPkI0qkO14fPxXGzs67XmsnYnVGApod89iLv2WVOdljLFvm6ge/KY2bD8UZTXgEQmhLQiNU9zgQqjSRbbs4jcnZpUuIRdu2KYPlViSCm5/glgme8Sm5rKB1T4JpqJxEr6mo3W7VFn9iY+pc/O0n3qHPCvFpI+p7ITDUmFAXymyrMU2kc+VGmkpkrUhtK4qJzkHFMJVkTZlQpYaple124goPCilbjFeo9C1rBdLhnrhfBzES1vZ7Le5dlhHrvhXDKNFJRykujDcBUJGavSb5oqPPIMH+88lMCsPpvFV6L/GUWtJdTDMzj5HWLiQyOsdNuzas5eEx8s7/1A6WGcUWnyBLvzO94HtK4IvWriejq1V7nuqMLnEkk5tTc2gJjfB+p57PVd8V5sscsr4enHLHGaYj6JExt2dqdQowZK2HdAVPvGeo4/wDJN+p3j/EZ6jtn9anDJrniqAcU4nYrP1S/7xvqH9SX1O/7wf6f/ZZ9PI54qRCJZErQp9FOBB8YDGzxY15po6HP3p9Rqvp5HPFnvGqjZJI9APELU+pv/td6rPgi3oYD/FfyZbuSdLI54sdzpJ7Se9RvK2fqQfe1OTP0oHoJv3r/AOz9KvpZHqYsX4Jrito9AM+8fzZ+lD6gZ95U5s/SnpZHqYsIuULl0P8AD9Pz6nNv6Uj4PUvPf6zf0p6VT1MXNoASuk/h+l51T1h8EP4fpec/1v2V9LI9TFzRCaV0p6Apec/10x3QFHe/1yr6dPUjmymuXSfUVH8frlL6mpfi9afanCnOOZcFE4Lq/qamZ15j4Jn1Cw6Zuc+5XjU5QzwYrWjce4/uCu+wVSwXD4XBMpPhpMnWSLRoLDXVdf0c6wW8b3c62syKglJddsOkBTK1MPGUopAqsMav4PwCWOne0WPoKycSzJIOYHcZ9i7AuVTG0Q68KcVmVcY95Ow8imAO808iugqUITWsU4tbYWQ+a7kUfFu813IrfhOhOJtz/ineY7kUhRf5h5LoIQhXinJgjDv8w8kRhX+Ye5biMJxOTCGEf5h5hH6G/wAzvHxW5CEK8YnKsT6C/wA3vCX0B/mjmFtwlCcYbYn0F/mjmEfoD9w5rZhKE4w2xfq9+5vND6ufubz/AGWyQhCahtjHo5/4ef7KN3Rz/wAPz6FuOao3NU0u2G7o5/4e/wCCi+r3/h7/AILeLVGWKWLtiO6Pf+H2pjcG8T1onWLexboak5izcWpXPNwMFbmBZCDmKegIUk0WriSjzJLW0dMShKCS25lmQfcJBIqipUpqs6mr72qFwRVSEsimcEmtQRZU3Kp3NKGVBDlSyqWEoVEWVLKpcqUIIS1ItUpallQRZUsqlhDKgjyoZVLlRDUFY001zFZc1RuaoK5agWKYhNIUEBahlU2VAtUqq5ai0KQhINU0opJJIOlcmpxTCtsBmQlFAlA0hMLU9CEEeVKE8pqBhamkJ5QhUMhKE5CEAhBpRSCBEIQiUkAhKEUkAhGEgkga5RFTFQuUUwhNKeQmlQNITYTyo3PAEkgDaTZZU0hIJjsUwfbZ6w2a7VBX6SpMc5rnwWtzOsbC0XA4iyKtQgsz+IMP559R/wClJOy6dt8Ex6SS2wDUkkkDUHJJIgOTSkkqGu0QSSQJNSSRSSKSSBJJJIEgUkkCCTkklA2oo3JJIGlNckkoGqj0r/7Tu1n+9qSSzVjmW+U38rv/ANCXTfl4vsw/tYkks+zZySSSD//Z',
                    'Cd Original Do Senhor Dos Aneis',
                    '25.550.00',
                  ),
                  ProductScreen()

                ],
              ),
              buildFaixa(),
              Container(
                color: const Color(0xFFEBDFCC),
                child: const Center(
                  child: Text(
                    'Produtos',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProdutoContainer(
                    'https://cdn.awsli.com.br/300x300/2331/2331833/produto/179228047/31530d5eff.jpg',
                    'Geladeira Gamer Com Led',
                    '3250.00',
                  ),
                  buildProdutoContainer(
                    'https://ae01.alicdn.com/kf/HTB1djV4bwmTBuNjy1Xbq6yMrVXaf.jpg_640x640Q90.jpg_.webp',
                    'Xbox One Do Godi Of Uar ',
                    '4550.00',
                  ),
                  buildProdutoContainer(
                    'data:image/jpeg;base64,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',
                    'Planeta Terra',
                    '1,999,999,999,999.00',
                  ),
                ],
              ),
              buildFaixa(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        //adicionarCarrinho()
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFB10C43),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFB10C43),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFB10C43),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                ],
              ),
              buildFaixa(),
              buildFaixa(),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  CarrinhoScreen(carrinhos:carrinhos),
                ));
              },
              backgroundColor: Color(0xFFB10C43),
              child: const Icon(Icons.shopping_cart),
            );
          }
        ),
      ),
    );
  }

  Widget buildProdutoContainer(
      String imagem, String nomeProduto, String preco) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB10C43),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imagem,
            width: 225,
            height: 225,
          ),
          const SizedBox(height: 10),
          Text(
            nomeProduto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {},
            child: Text('Preço: R\$ $preco'),
          ),
        ],
      ),
    );
  }
}

Widget buildAdicionarNovoProduto2() {
  return Container(
    height: 300.0,
    width: 300.0,
    decoration: BoxDecoration(
      color: const Color(0xFFEBDFCC),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 225,
          height: 225,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFEBDFCC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 60,
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: const Text('Adicionar novo produto'),
        ),
      ],
    ),
  );
}

Widget buildEnviarParaCarrinho() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 300.0,
        height: 30.0,
        child: ElevatedButton(
          onPressed: () {
            //
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFB10C43),
            onPrimary: Colors.white,
          ),
          child: const Text('Enviar para o carrinho'),
        ),
      ),
      SizedBox(
        width: 300.0,
        height: 30.0,
        child: ElevatedButton(
          onPressed: () {
            //
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFB10C43),
            onPrimary: Colors.white,
          ),
          child: const Text('Enviar para o carrinho'),
        ),
      ),
      SizedBox(
        width: 300.0,
        height: 30.0,
        child: ElevatedButton(
          onPressed: () {
            //
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFB10C43),
            onPrimary: Colors.white,
          ),
          child: const Text('Enviar para o carrinho'),
        ),
      ),
    ],
  );
}

Widget buildCarrinhoIntel(String nome, String preco, BuildContext context) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xFFEBDFCC),
          border: Border.all(
            color: const Color(0xFFB10C43),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'R\$ $preco',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // Implemente a lógica para a ação do botão aqui
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFB10C43),
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 32.0,
        color: const Color(0xFFEBDFCC),
      ),
    ],
  );
}

Widget buildFaixa() {
  return Container(
    height: 32.0,
    color: const Color(0xFFEBDFCC),
  );
}
