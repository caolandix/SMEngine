#ifndef PROFESSION_H
#define PROFESSION_H

#include "commondefs.h"

class Profession {
public:
	Profession(void);
	virtual ~Profession(void);

private:
	string m_Name;
	ProfessionType m_Profession;
	uint m_HitPoints;
	GenderType m_Gender;
	uint m_Age;
	RaceType m_Race;
	uint m_Height, m_Weight;

	uint m_St, m_Qu, m_Pr, m_In, m_Em, m_Ap, m_Co, m_Ag, m_Sd, m_Me, m_Re;

	uint m_Credits;
	uint m_XP;

};

#endif

