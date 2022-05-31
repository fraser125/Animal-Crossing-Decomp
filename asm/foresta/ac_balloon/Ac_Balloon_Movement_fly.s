lbl_80413F7C:
/* 80413F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80413F80  7C 08 02 A6 */	mflr r0
/* 80413F84  3C 80 80 64 */	lis r4, lit_495@ha /* 0x80643A8C@ha */
/* 80413F88  3C A0 80 64 */	lis r5, lit_496@ha /* 0x80643A94@ha */
/* 80413F8C  38 C4 3A 8C */	addi r6, r4, lit_495@l /* 0x80643A8C@l */
/* 80413F90  C8 65 3A 94 */	lfd f3, lit_496@l(r5)  /* 0x80643A94@l */
/* 80413F94  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80413F98  3C 80 80 64 */	lis r4, data_80643A74@ha /* 0x80643A74@ha */
/* 80413F9C  C8 86 00 00 */	lfd f4, 0(r6)
/* 80413FA0  38 A0 00 32 */	li r5, 0x32
/* 80413FA4  FC 40 28 34 */	frsqrte f2, f5
/* 80413FA8  C0 04 3A 74 */	lfs f0, data_80643A74@l(r4)  /* 0x80643A74@l */
/* 80413FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80413FB0  38 80 00 00 */	li r4, 0
/* 80413FB4  38 C0 00 05 */	li r6, 5
/* 80413FB8  FC 22 00 B2 */	fmul f1, f2, f2
/* 80413FBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80413FC0  7C 7F 1B 78 */	mr r31, r3
/* 80413FC4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80413FC8  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80413FCC  FC 25 00 72 */	fmul f1, f5, f1
/* 80413FD0  FC 23 08 28 */	fsub f1, f3, f1
/* 80413FD4  FC 42 00 72 */	fmul f2, f2, f1
/* 80413FD8  FC 22 00 B2 */	fmul f1, f2, f2
/* 80413FDC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80413FE0  FC 25 00 72 */	fmul f1, f5, f1
/* 80413FE4  FC 23 08 28 */	fsub f1, f3, f1
/* 80413FE8  FC 42 00 72 */	fmul f2, f2, f1
/* 80413FEC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80413FF0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80413FF4  FC 25 00 72 */	fmul f1, f5, f1
/* 80413FF8  FC 23 08 28 */	fsub f1, f3, f1
/* 80413FFC  FC 22 00 72 */	fmul f1, f2, f1
/* 80414000  FC 25 00 72 */	fmul f1, f5, f1
/* 80414004  FC 20 08 18 */	frsp f1, f1
/* 80414008  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8041400C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80414010  EC 20 08 28 */	fsubs f1, f0, f1
/* 80414014  4B FA 72 FD */	bl add_calc_short_angle2
/* 80414018  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80643A8C@ha */
/* 8041401C  3C 80 80 64 */	lis r4, lit_496@ha /* 0x80643A94@ha */
/* 80414020  38 A3 3A 8C */	addi r5, r3, lit_495@l /* 0x80643A8C@l */
/* 80414024  C8 64 3A 94 */	lfd f3, lit_496@l(r4)  /* 0x80643A94@l */
/* 80414028  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8041402C  3C 60 80 64 */	lis r3, data_80643A74@ha /* 0x80643A74@ha */
/* 80414030  C8 85 00 00 */	lfd f4, 0(r5)
/* 80414034  38 80 00 00 */	li r4, 0
/* 80414038  FC 40 28 34 */	frsqrte f2, f5
/* 8041403C  C0 03 3A 74 */	lfs f0, data_80643A74@l(r3)  /* 0x80643A74@l */
/* 80414040  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80414044  38 A0 00 32 */	li r5, 0x32
/* 80414048  38 C0 00 05 */	li r6, 5
/* 8041404C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80414050  FC 44 00 B2 */	fmul f2, f4, f2
/* 80414054  FC 25 00 72 */	fmul f1, f5, f1
/* 80414058  FC 23 08 28 */	fsub f1, f3, f1
/* 8041405C  FC 42 00 72 */	fmul f2, f2, f1
/* 80414060  FC 22 00 B2 */	fmul f1, f2, f2
/* 80414064  FC 44 00 B2 */	fmul f2, f4, f2
/* 80414068  FC 25 00 72 */	fmul f1, f5, f1
/* 8041406C  FC 23 08 28 */	fsub f1, f3, f1
/* 80414070  FC 42 00 72 */	fmul f2, f2, f1
/* 80414074  FC 22 00 B2 */	fmul f1, f2, f2
/* 80414078  FC 44 00 B2 */	fmul f2, f4, f2
/* 8041407C  FC 25 00 72 */	fmul f1, f5, f1
/* 80414080  FC 23 08 28 */	fsub f1, f3, f1
/* 80414084  FC 22 00 72 */	fmul f1, f2, f1
/* 80414088  FC 25 00 72 */	fmul f1, f5, f1
/* 8041408C  FC 20 08 18 */	frsp f1, f1
/* 80414090  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80414094  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80414098  EC 20 08 28 */	fsubs f1, f0, f1
/* 8041409C  4B FA 72 75 */	bl add_calc_short_angle2
/* 804140A0  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80643A8C@ha */
/* 804140A4  3C 80 80 64 */	lis r4, lit_496@ha /* 0x80643A94@ha */
/* 804140A8  38 A3 3A 8C */	addi r5, r3, lit_495@l /* 0x80643A8C@l */
/* 804140AC  C8 64 3A 94 */	lfd f3, lit_496@l(r4)  /* 0x80643A94@l */
/* 804140B0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804140B4  3C 60 80 64 */	lis r3, data_80643A74@ha /* 0x80643A74@ha */
/* 804140B8  C8 85 00 00 */	lfd f4, 0(r5)
/* 804140BC  38 80 00 00 */	li r4, 0
/* 804140C0  FC 40 28 34 */	frsqrte f2, f5
/* 804140C4  C0 03 3A 74 */	lfs f0, data_80643A74@l(r3)  /* 0x80643A74@l */
/* 804140C8  38 7F 04 5E */	addi r3, r31, 0x45e
/* 804140CC  38 A0 00 32 */	li r5, 0x32
/* 804140D0  38 C0 00 05 */	li r6, 5
/* 804140D4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804140D8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804140DC  FC 25 00 72 */	fmul f1, f5, f1
/* 804140E0  FC 23 08 28 */	fsub f1, f3, f1
/* 804140E4  FC 42 00 72 */	fmul f2, f2, f1
/* 804140E8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804140EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804140F0  FC 25 00 72 */	fmul f1, f5, f1
/* 804140F4  FC 23 08 28 */	fsub f1, f3, f1
/* 804140F8  FC 42 00 72 */	fmul f2, f2, f1
/* 804140FC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80414100  FC 44 00 B2 */	fmul f2, f4, f2
/* 80414104  FC 25 00 72 */	fmul f1, f5, f1
/* 80414108  FC 23 08 28 */	fsub f1, f3, f1
/* 8041410C  FC 22 00 72 */	fmul f1, f2, f1
/* 80414110  FC 25 00 72 */	fmul f1, f5, f1
/* 80414114  FC 20 08 18 */	frsp f1, f1
/* 80414118  D0 21 00 08 */	stfs f1, 8(r1)
/* 8041411C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80414120  EC 20 08 28 */	fsubs f1, f0, f1
/* 80414124  4B FA 71 ED */	bl add_calc_short_angle2
/* 80414128  7F E3 FB 78 */	mr r3, r31
/* 8041412C  4B F6 01 E9 */	bl Actor_position_moveF
/* 80414130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80414134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80414138  7C 08 03 A6 */	mtlr r0
/* 8041413C  38 21 00 20 */	addi r1, r1, 0x20
/* 80414140  4E 80 00 20 */	blr 
