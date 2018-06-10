
public class HolaMundo extends javax.swing.JComponent {
	public static void main(String[] args) {
	javax.swing.JFrame f = new javax.swing.JFrame("Mi primer programa");
	f.setSize(300, 300);
	f.getContentPane().add(new HolaMundo( ));
	f.setVisible(true);
	}
	public void paintComponent(java.awt.Graphics g) {
	g.drawString("Hello, World! \n Salut, monde! \n Hallo, Welt! \n Hola, Mundo!", 125, 95);
	}
	}