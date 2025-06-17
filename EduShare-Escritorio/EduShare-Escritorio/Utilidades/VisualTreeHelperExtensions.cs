using System.Windows;
using System.Windows.Media;
namespace EduShare_Escritorio.Utilidades
{

    public static class VisualTreeHelperExtensions
    {
        public static T FindChild<T>(DependencyObject parent, string childName = null)
            where T : DependencyObject
        {
            if (parent == null) return null;

            int childCount = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);

                if (child is T tChild && (childName == null ||
                    (child is FrameworkElement fe && fe.Name == childName)))
                {
                    return tChild;
                }

                var result = FindChild<T>(child, childName);
                if (result != null)
                    return result;
            }

            return null;
        }
    }

}
