#include&lt;GL/glu.h&gt;
#include &lt;GL/glut.h&gt;
void MyInit()
{
glClearColor(0,0,1,1);
glColor3f(1,0,0);
}
void draw()
{
glClear(GL_COLOR_BUFFER_BIT);
glPointSize(5);
glBegin(GL_LINE_LOOP);
glVertex2f(-0.6,0.6);
glVertex2f(0.6,0.6);
glVertex2f(0.6,-0.6);
glVertex2f(-0.6,-0.6);
glEnd();
glFlush();
}
int main(int c, char *v[])
{
glutInit(&amp;c,v);
glutInitWindowPosition(300,300);
glutInitWindowSize(400,400);
glutInitDisplayMode(GLUT_RGB | GLUT_SINGLE);
glutCreateWindow(&quot;My first window&quot;);
MyInit();
glutDisplayFunc(draw);
glutMainLoop();
return 0;
}
