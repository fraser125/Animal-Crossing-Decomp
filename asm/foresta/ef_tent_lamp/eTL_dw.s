lbl_80622428:
/* 80622428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062242C  7C 08 02 A6 */	mflr r0
/* 80622430  90 01 00 24 */	stw r0, 0x24(r1)
/* 80622434  39 61 00 20 */	addi r11, r1, 0x20
/* 80622438  4B A7 8A 9D */	bl func_8009AED4
/* 8062243C  3C A0 80 65 */	lis r5, lit_432@ha /* 0x8064CE44@ha */
/* 80622440  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80622444  C0 25 CE 44 */	lfs f1, lit_432@l(r5)  /* 0x8064CE44@l */
/* 80622448  3C C0 80 65 */	lis r6, lit_431@ha /* 0x8064CE40@ha */
/* 8062244C  C0 46 CE 40 */	lfs f2, lit_431@l(r6)  /* 0x8064CE40@l */
/* 80622450  7C 9D 23 78 */	mr r29, r4
/* 80622454  EC 01 00 32 */	fmuls f0, f1, f0
/* 80622458  80 64 00 00 */	lwz r3, 0(r4)
/* 8062245C  EC 02 00 2A */	fadds f0, f2, f0
/* 80622460  FC 00 00 1E */	fctiwz f0, f0
/* 80622464  D8 01 00 08 */	stfd f0, 8(r1)
/* 80622468  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8062246C  4B DC 2C 9D */	bl _texture_z_light_fog_prim
/* 80622470  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064CE2C@ha */
/* 80622474  83 FD 00 00 */	lwz r31, 0(r29)
/* 80622478  38 83 CE 2C */	addi r4, r3, lit_398@l /* 0x8064CE2C@l */
/* 8062247C  38 60 00 00 */	li r3, 0
/* 80622480  C0 24 00 00 */	lfs f1, 0(r4)
/* 80622484  FC 40 08 90 */	fmr f2, f1
/* 80622488  FC 60 08 90 */	fmr f3, f1
/* 8062248C  4B DE 9E 75 */	bl Matrix_translate
/* 80622490  3C 80 80 65 */	lis r4, lit_433@ha /* 0x8064CE48@ha */
/* 80622494  38 60 00 01 */	li r3, 1
/* 80622498  C0 24 CE 48 */	lfs f1, lit_433@l(r4)  /* 0x8064CE48@l */
/* 8062249C  FC 40 08 90 */	fmr f2, f1
/* 806224A0  FC 60 08 90 */	fmr f3, f1
/* 806224A4  4B DE 9F 49 */	bl Matrix_scale
/* 806224A8  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 806224AC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 806224B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806224B4  38 80 FF FF */	li r4, -1
/* 806224B8  38 C7 00 08 */	addi r6, r7, 8
/* 806224BC  64 05 FA 00 */	oris r5, r0, 0xfa00
/* 806224C0  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 806224C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806224C8  90 A7 00 00 */	stw r5, 0(r7)
/* 806224CC  90 87 00 04 */	stw r4, 4(r7)
/* 806224D0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806224D4  38 7E 00 08 */	addi r3, r30, 8
/* 806224D8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806224DC  90 1E 00 00 */	stw r0, 0(r30)
/* 806224E0  80 7D 00 00 */	lwz r3, 0(r29)
/* 806224E4  4B DE AE F1 */	bl _Matrix_to_Mtx_new
/* 806224E8  90 7E 00 04 */	stw r3, 4(r30)
/* 806224EC  3C 60 80 CC */	lis r3, obj_tent_lamp_model@ha /* 0x80CC17F0@ha */
/* 806224F0  3C 80 DE 00 */	lis r4, 0xde00
/* 806224F4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 806224F8  38 03 17 F0 */	addi r0, r3, obj_tent_lamp_model@l /* 0x80CC17F0@l */
/* 806224FC  38 65 00 08 */	addi r3, r5, 8
/* 80622500  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80622504  90 85 00 00 */	stw r4, 0(r5)
/* 80622508  90 05 00 04 */	stw r0, 4(r5)
/* 8062250C  39 61 00 20 */	addi r11, r1, 0x20
/* 80622510  4B A7 8A 11 */	bl func_8009AF20
/* 80622514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80622518  7C 08 03 A6 */	mtlr r0
/* 8062251C  38 21 00 20 */	addi r1, r1, 0x20
/* 80622520  4E 80 00 20 */	blr 