lbl_80525DA8:
/* 80525DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525DAC  7C 08 02 A6 */	mflr r0
/* 80525DB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525DB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80525DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525DBC  3C 63 00 02 */	addis r3, r3, 2
/* 80525DC0  80 63 61 00 */	lwz r3, 0x6100(r3)
/* 80525DC4  28 03 00 00 */	cmplwi r3, 0
/* 80525DC8  41 82 00 34 */	beq lbl_80525DFC
/* 80525DCC  80 03 00 00 */	lwz r0, 0(r3)
/* 80525DD0  2C 00 00 05 */	cmpwi r0, 5
/* 80525DD4  41 82 00 28 */	beq lbl_80525DFC
/* 80525DD8  4B B3 6F 1D */	bl fqrand
/* 80525DDC  3C 60 80 65 */	lis r3, lit_556@ha /* 0x806491AC@ha */
/* 80525DE0  C0 03 91 AC */	lfs f0, lit_556@l(r3)  /* 0x806491AC@l */
/* 80525DE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80525DE8  FC 00 00 1E */	fctiwz f0, f0
/* 80525DEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80525DF0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80525DF4  38 63 3D B6 */	addi r3, r3, 0x3db6
/* 80525DF8  48 00 00 84 */	b lbl_80525E7C
lbl_80525DFC:
/* 80525DFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525E00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80525E04  3C 63 00 02 */	addis r3, r3, 2
/* 80525E08  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 80525E0C  2C 00 00 01 */	cmpwi r0, 1
/* 80525E10  41 82 00 68 */	beq lbl_80525E78
/* 80525E14  40 80 00 10 */	bge lbl_80525E24
/* 80525E18  2C 00 00 00 */	cmpwi r0, 0
/* 80525E1C  40 80 00 14 */	bge lbl_80525E30
/* 80525E20  48 00 00 58 */	b lbl_80525E78
lbl_80525E24:
/* 80525E24  2C 00 00 03 */	cmpwi r0, 3
/* 80525E28  40 80 00 50 */	bge lbl_80525E78
/* 80525E2C  48 00 00 28 */	b lbl_80525E54
lbl_80525E30:
/* 80525E30  4B B3 6E C5 */	bl fqrand
/* 80525E34  3C 60 80 65 */	lis r3, lit_556@ha /* 0x806491AC@ha */
/* 80525E38  C0 03 91 AC */	lfs f0, lit_556@l(r3)  /* 0x806491AC@l */
/* 80525E3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80525E40  FC 00 00 1E */	fctiwz f0, f0
/* 80525E44  D8 01 00 08 */	stfd f0, 8(r1)
/* 80525E48  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80525E4C  38 63 3D BB */	addi r3, r3, 0x3dbb
/* 80525E50  48 00 00 2C */	b lbl_80525E7C
lbl_80525E54:
/* 80525E54  4B B3 6E A1 */	bl fqrand
/* 80525E58  3C 60 80 65 */	lis r3, lit_556@ha /* 0x806491AC@ha */
/* 80525E5C  C0 03 91 AC */	lfs f0, lit_556@l(r3)  /* 0x806491AC@l */
/* 80525E60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80525E64  FC 00 00 1E */	fctiwz f0, f0
/* 80525E68  D8 01 00 08 */	stfd f0, 8(r1)
/* 80525E6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80525E70  38 63 3D C0 */	addi r3, r3, 0x3dc0
/* 80525E74  48 00 00 08 */	b lbl_80525E7C
lbl_80525E78:
/* 80525E78  38 60 3D BB */	li r3, 0x3dbb
lbl_80525E7C:
/* 80525E7C  4B E7 26 99 */	bl mDemo_Set_msg_num
/* 80525E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525E84  7C 08 03 A6 */	mtlr r0
/* 80525E88  38 21 00 10 */	addi r1, r1, 0x10
/* 80525E8C  4E 80 00 20 */	blr 
