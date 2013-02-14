#ifndef BSPLINEGROUP_H
#define BSPLINEGROUP_H

#include <QList>
#include "../Curve/ControlPoint.h"
#include "../Curve/BSpline.h"
#include "../Curve/Surface.h"

class BSplineGroup
{
public:
    BSplineGroup();

    int addControlPoint(QPointF value);
    int addBSpline();
    int addSurface();

    bool addControlPointToSpline(int spline_id, int cpt_id);

    int createSurface(int spline_id, float width = 50.0);

    void removeControlPoint(int cpt_id);
    void removeSpline(int spline_id);
    void removeSurface(int surface_id);

    //IO
    bool load(std::string fname);
    void save(std::string fname);

    //Utilities
    QList<Surface>& surfaces()
    {
        return m_surfaces;
    }

    QList<BSpline>& splines()
    {
        return m_splines;
    }

    QList<ControlPoint>& controlPoints()
    {
        return m_cpts;
    }

    Surface& surface(int index)
    {
        return m_surfaces[index];
    }

    BSpline& spline(int index)
    {
        return m_splines[index];
    }

    ControlPoint& controlPoint(int index)
    {
        return m_cpts[index];
    }

    int num_surfaces()
    {
        return m_surfaces.size();
    }

    int num_splines()
    {
        return m_splines.size();
    }

    int num_controlPoints()
    {
        return m_cpts.size();
    }

private:
    QList<Surface> m_surfaces;
    QList<BSpline> m_splines;
    QList<ControlPoint> m_cpts;
};

#endif // BSPLINEGROUP_H
