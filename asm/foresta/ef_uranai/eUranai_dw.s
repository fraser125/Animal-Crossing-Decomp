lbl_80625CAC:
/* 80625CAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80625CB0  7C 08 02 A6 */	mflr r0
/* 80625CB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80625CB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80625CBC  4B A7 52 09 */	bl func_8009AEC4
/* 80625CC0  7C 79 1B 78 */	mr r25, r3
/* 80625CC4  A8 63 00 00 */	lha r3, 0(r3)
/* 80625CC8  7C 9A 23 78 */	mr r26, r4
/* 80625CCC  2C 03 00 46 */	cmpwi r3, 0x46
/* 80625CD0  41 80 00 58 */	blt lbl_80625D28
/* 80625CD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80625CD8  3C C0 80 65 */	lis r6, lit_426@ha /* 0x8064CFF0@ha */
/* 80625CDC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80625CE0  3C A0 80 65 */	lis r5, lit_427@ha /* 0x8064CFF4@ha */
/* 80625CE4  3C 84 00 02 */	addis r4, r4, 2
/* 80625CE8  C0 45 CF F4 */	lfs f2, lit_427@l(r5)  /* 0x8064CFF4@l */
/* 80625CEC  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80625CF0  3B E0 00 FF */	li r31, 0xff
/* 80625CF4  C0 26 CF F0 */	lfs f1, lit_426@l(r6)  /* 0x8064CFF0@l */
/* 80625CF8  3B C0 00 00 */	li r30, 0
/* 80625CFC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80625D00  3B A0 00 64 */	li r29, 0x64
/* 80625D04  38 80 00 46 */	li r4, 0x46
/* 80625D08  38 A0 00 50 */	li r5, 0x50
/* 80625D0C  7D 89 03 A6 */	mtctr r12
/* 80625D10  4E 80 04 21 */	bctrl 
/* 80625D14  FC 00 08 1E */	fctiwz f0, f1
/* 80625D18  D8 01 00 08 */	stfd f0, 8(r1)
/* 80625D1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80625D20  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80625D24  48 00 00 94 */	b lbl_80625DB8
lbl_80625D28:
/* 80625D28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80625D2C  3C C0 80 65 */	lis r6, lit_426@ha /* 0x8064CFF0@ha */
/* 80625D30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80625D34  3C A0 80 65 */	lis r5, lit_428@ha /* 0x8064CFF8@ha */
/* 80625D38  3F 64 00 02 */	addis r27, r4, 2
/* 80625D3C  C0 45 CF F8 */	lfs f2, lit_428@l(r5)  /* 0x8064CFF8@l */
/* 80625D40  80 9B 60 9C */	lwz r4, 0x609c(r27)
/* 80625D44  3B E0 00 FF */	li r31, 0xff
/* 80625D48  C0 26 CF F0 */	lfs f1, lit_426@l(r6)  /* 0x8064CFF0@l */
/* 80625D4C  3B C0 00 00 */	li r30, 0
/* 80625D50  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80625D54  38 80 00 00 */	li r4, 0
/* 80625D58  38 A0 00 46 */	li r5, 0x46
/* 80625D5C  7D 89 03 A6 */	mtctr r12
/* 80625D60  4E 80 04 21 */	bctrl 
/* 80625D64  FC 00 08 1E */	fctiwz f0, f1
/* 80625D68  80 7B 60 9C */	lwz r3, 0x609c(r27)
/* 80625D6C  3C A0 80 65 */	lis r5, lit_427@ha /* 0x8064CFF4@ha */
/* 80625D70  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064CFF0@ha */
/* 80625D74  38 E5 CF F4 */	addi r7, r5, lit_427@l /* 0x8064CFF4@l */
/* 80625D78  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80625D7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80625D80  38 C4 CF F0 */	addi r6, r4, lit_426@l /* 0x8064CFF0@l */
/* 80625D84  A8 79 00 00 */	lha r3, 0(r25)
/* 80625D88  38 80 00 00 */	li r4, 0
/* 80625D8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80625D90  38 A0 00 46 */	li r5, 0x46
/* 80625D94  C0 27 00 00 */	lfs f1, 0(r7)
/* 80625D98  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80625D9C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80625DA0  7D 89 03 A6 */	mtctr r12
/* 80625DA4  4E 80 04 21 */	bctrl 
/* 80625DA8  FC 00 08 1E */	fctiwz f0, f1
/* 80625DAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80625DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80625DB4  54 1C 06 3E */	clrlwi r28, r0, 0x18
lbl_80625DB8:
/* 80625DB8  83 7A 00 00 */	lwz r27, 0(r26)
/* 80625DBC  7F 63 DB 78 */	mr r3, r27
/* 80625DC0  4B DB F3 99 */	bl _texture_z_light_fog_prim_xlu
/* 80625DC4  3C 80 80 CC */	lis r4, ef_uranai01_00_evw_anime@ha /* 0x80CC31F0@ha */
/* 80625DC8  7F 43 D3 78 */	mr r3, r26
/* 80625DCC  38 84 31 F0 */	addi r4, r4, ef_uranai01_00_evw_anime@l /* 0x80CC31F0@l */
/* 80625DD0  4B D4 D7 8D */	bl Evw_Anime_Set
/* 80625DD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80625DD8  7F 43 D3 78 */	mr r3, r26
/* 80625DDC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80625DE0  38 99 00 10 */	addi r4, r25, 0x10
/* 80625DE4  3C C5 00 02 */	addis r6, r5, 2
/* 80625DE8  38 B9 00 34 */	addi r5, r25, 0x34
/* 80625DEC  80 E6 60 9C */	lwz r7, 0x609c(r6)
/* 80625DF0  38 D9 00 40 */	addi r6, r25, 0x40
/* 80625DF4  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 80625DF8  7D 89 03 A6 */	mtctr r12
/* 80625DFC  4E 80 04 21 */	bctrl 
/* 80625E00  80 FB 02 E0 */	lwz r7, 0x2e0(r27)
/* 80625E04  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80625E08  57 C5 82 1E */	rlwinm r5, r30, 0x10, 8, 0xf
/* 80625E0C  3C 60 80 CC */	lis r3, ef_uranai01_00_modelT@ha /* 0x80CC3170@ha */
/* 80625E10  38 C7 00 08 */	addi r6, r7, 8
/* 80625E14  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 80625E18  90 DB 02 E0 */	stw r6, 0x2e0(r27)
/* 80625E1C  53 E5 C0 0E */	rlwimi r5, r31, 0x18, 0, 7
/* 80625E20  53 A5 44 2E */	rlwimi r5, r29, 8, 0x10, 0x17
/* 80625E24  38 03 31 70 */	addi r0, r3, ef_uranai01_00_modelT@l /* 0x80CC3170@l */
/* 80625E28  90 87 00 00 */	stw r4, 0(r7)
/* 80625E2C  53 85 06 3E */	rlwimi r5, r28, 0, 0x18, 0x1f
/* 80625E30  3C 80 DE 00 */	lis r4, 0xde00
/* 80625E34  39 61 00 40 */	addi r11, r1, 0x40
/* 80625E38  90 A7 00 04 */	stw r5, 4(r7)
/* 80625E3C  80 BB 02 E0 */	lwz r5, 0x2e0(r27)
/* 80625E40  38 65 00 08 */	addi r3, r5, 8
/* 80625E44  90 7B 02 E0 */	stw r3, 0x2e0(r27)
/* 80625E48  90 85 00 00 */	stw r4, 0(r5)
/* 80625E4C  90 05 00 04 */	stw r0, 4(r5)
/* 80625E50  4B A7 50 C1 */	bl func_8009AF10
/* 80625E54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80625E58  7C 08 03 A6 */	mtlr r0
/* 80625E5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80625E60  4E 80 00 20 */	blr 
