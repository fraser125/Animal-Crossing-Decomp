lbl_8055688C:
/* 8055688C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80556890  7C 08 02 A6 */	mflr r0
/* 80556894  3C A0 80 65 */	lis r5, data_80649634@ha /* 0x80649634@ha */
/* 80556898  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055689C  38 C5 96 34 */	addi r6, r5, data_80649634@l /* 0x80649634@l */
/* 805568A0  38 A0 90 00 */	li r5, -28672
/* 805568A4  38 00 00 00 */	li r0, 0
/* 805568A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805568AC  7C 9F 23 78 */	mr r31, r4
/* 805568B0  38 80 00 00 */	li r4, 0
/* 805568B4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805568B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805568BC  C0 06 00 00 */	lfs f0, 0(r6)
/* 805568C0  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 805568C4  C0 23 08 2C */	lfs f1, 0x82c(r3)
/* 805568C8  EC 22 08 2A */	fadds f1, f2, f1
/* 805568CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805568D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805568D4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805568D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805568DC  B0 A1 00 08 */	sth r5, 8(r1)
/* 805568E0  A8 A3 00 B6 */	lha r5, 0xb6(r3)
/* 805568E4  7F E3 FB 78 */	mr r3, r31
/* 805568E8  3C A5 00 01 */	addis r5, r5, 1
/* 805568EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805568F0  38 05 80 00 */	addi r0, r5, -32768
/* 805568F4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805568F8  4B E2 81 CD */	bl Camera2_change_priority
/* 805568FC  3C 60 80 65 */	lis r3, lit_502@ha /* 0x80649640@ha */
/* 80556900  3C A0 80 65 */	lis r5, lit_500@ha /* 0x80649638@ha */
/* 80556904  C0 63 96 40 */	lfs f3, lit_502@l(r3)  /* 0x80649640@l */
/* 80556908  3C 80 80 65 */	lis r4, lit_501@ha /* 0x8064963C@ha */
/* 8055690C  C0 25 96 38 */	lfs f1, lit_500@l(r5)  /* 0x80649638@l */
/* 80556910  7F E3 FB 78 */	mr r3, r31
/* 80556914  FC 80 18 90 */	fmr f4, f3
/* 80556918  C0 44 96 3C */	lfs f2, lit_501@l(r4)  /* 0x8064963C@l */
/* 8055691C  38 81 00 10 */	addi r4, r1, 0x10
/* 80556920  38 A1 00 08 */	addi r5, r1, 8
/* 80556924  38 C0 00 09 */	li r6, 9
/* 80556928  4B E2 9F DD */	bl Camera2_request_main_demo_fromNowPos
/* 8055692C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80556930  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80556934  7C 08 03 A6 */	mtlr r0
/* 80556938  38 21 00 30 */	addi r1, r1, 0x30
/* 8055693C  4E 80 00 20 */	blr 
