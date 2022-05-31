lbl_8055BC34:
/* 8055BC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055BC38  7C 08 02 A6 */	mflr r0
/* 8055BC3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055BC40  39 61 00 20 */	addi r11, r1, 0x20
/* 8055BC44  4B B3 F2 85 */	bl func_8009AEC8
/* 8055BC48  7C 7E 1B 78 */	mr r30, r3
/* 8055BC4C  3C 60 80 6A */	lis r3, data_806A6C60@ha /* 0x806A6C60@ha */
/* 8055BC50  7C 9A 23 78 */	mr r26, r4
/* 8055BC54  7C BB 2B 78 */	mr r27, r5
/* 8055BC58  3B E3 6C 60 */	addi r31, r3, data_806A6C60@l /* 0x806A6C60@l */
/* 8055BC5C  7C DC 33 78 */	mr r28, r6
/* 8055BC60  7F C4 F3 78 */	mr r4, r30
/* 8055BC64  3B A0 00 00 */	li r29, 0
/* 8055BC68  38 60 00 08 */	li r3, 8
/* 8055BC6C  4B E3 E5 F9 */	bl mDemo_Check
/* 8055BC70  2C 03 00 01 */	cmpwi r3, 1
/* 8055BC74  40 82 00 A4 */	bne lbl_8055BD18
/* 8055BC78  4B E3 E7 99 */	bl mDemo_Check_ListenAble
/* 8055BC7C  2C 03 00 00 */	cmpwi r3, 0
/* 8055BC80  40 82 01 88 */	bne lbl_8055BE08
/* 8055BC84  7F C3 F3 78 */	mr r3, r30
/* 8055BC88  4B FF E8 11 */	bl aNSC_calc_talk_start_tim
/* 8055BC8C  3C 60 80 65 */	lis r3, lit_1185@ha /* 0x806496F4@ha */
/* 8055BC90  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8055BC94  C0 03 96 F4 */	lfs f0, lit_1185@l(r3)  /* 0x806496F4@l */
/* 8055BC98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055BC9C  41 80 00 10 */	blt lbl_8055BCAC
/* 8055BCA0  80 1E 09 C0 */	lwz r0, 0x9c0(r30)
/* 8055BCA4  2C 00 00 00 */	cmpwi r0, 0
/* 8055BCA8  40 82 01 60 */	bne lbl_8055BE08
lbl_8055BCAC:
/* 8055BCAC  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8055BCB0  38 7E 00 DE */	addi r3, r30, 0xde
/* 8055BCB4  38 A0 08 00 */	li r5, 0x800
/* 8055BCB8  4B E5 EE 8D */	bl chase_angle
/* 8055BCBC  2C 03 00 01 */	cmpwi r3, 1
/* 8055BCC0  40 82 00 4C */	bne lbl_8055BD0C
/* 8055BCC4  57 80 10 3A */	slwi r0, r28, 2
/* 8055BCC8  38 7F 31 B0 */	addi r3, r31, 0x31b0
/* 8055BCCC  7D 83 00 2E */	lwzx r12, r3, r0
/* 8055BCD0  7F C3 F3 78 */	mr r3, r30
/* 8055BCD4  7F 44 D3 78 */	mr r4, r26
/* 8055BCD8  7D 89 03 A6 */	mtctr r12
/* 8055BCDC  4E 80 04 21 */	bctrl 
/* 8055BCE0  38 00 FF FF */	li r0, -1
/* 8055BCE4  3C 60 81 1F */	lis r3, data_811EC208@ha /* 0x811EC208@ha */
/* 8055BCE8  90 1E 09 C0 */	stw r0, 0x9c0(r30)
/* 8055BCEC  38 A3 C2 08 */	addi r5, r3, data_811EC208@l /* 0x811EC208@l */
/* 8055BCF0  7F C3 F3 78 */	mr r3, r30
/* 8055BCF4  80 85 00 00 */	lwz r4, 0(r5)
/* 8055BCF8  38 04 00 01 */	addi r0, r4, 1
/* 8055BCFC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8055BD00  90 05 00 00 */	stw r0, 0(r5)
/* 8055BD04  4B FF E8 31 */	bl aNSC_Set_ListenAble
/* 8055BD08  3B A0 00 01 */	li r29, 1
lbl_8055BD0C:
/* 8055BD0C  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8055BD10  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8055BD14  48 00 00 F4 */	b lbl_8055BE08
lbl_8055BD18:
/* 8055BD18  7F C4 F3 78 */	mr r4, r30
/* 8055BD1C  38 60 00 07 */	li r3, 7
/* 8055BD20  4B E3 E5 45 */	bl mDemo_Check
/* 8055BD24  2C 03 00 01 */	cmpwi r3, 1
/* 8055BD28  40 82 00 5C */	bne lbl_8055BD84
/* 8055BD2C  4B E3 E6 E5 */	bl mDemo_Check_ListenAble
/* 8055BD30  2C 03 00 00 */	cmpwi r3, 0
/* 8055BD34  40 82 00 D4 */	bne lbl_8055BE08
/* 8055BD38  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8055BD3C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8055BD40  38 A0 08 00 */	li r5, 0x800
/* 8055BD44  4B E5 EE 01 */	bl chase_angle
/* 8055BD48  2C 03 00 01 */	cmpwi r3, 1
/* 8055BD4C  40 82 00 2C */	bne lbl_8055BD78
/* 8055BD50  57 80 10 3A */	slwi r0, r28, 2
/* 8055BD54  38 7F 31 B8 */	addi r3, r31, 0x31b8
/* 8055BD58  7D 83 00 2E */	lwzx r12, r3, r0
/* 8055BD5C  7F C3 F3 78 */	mr r3, r30
/* 8055BD60  7F 44 D3 78 */	mr r4, r26
/* 8055BD64  7D 89 03 A6 */	mtctr r12
/* 8055BD68  4E 80 04 21 */	bctrl 
/* 8055BD6C  7F C3 F3 78 */	mr r3, r30
/* 8055BD70  4B FF E7 C5 */	bl aNSC_Set_ListenAble
/* 8055BD74  3B A0 00 01 */	li r29, 1
lbl_8055BD78:
/* 8055BD78  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8055BD7C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8055BD80  48 00 00 88 */	b lbl_8055BE08
lbl_8055BD84:
/* 8055BD84  4B E3 C6 75 */	bl mDemo_Get_talk_actor
/* 8055BD88  28 03 00 00 */	cmplwi r3, 0
/* 8055BD8C  40 82 00 7C */	bne lbl_8055BE08
/* 8055BD90  3C 60 81 1F */	lis r3, data_811EC208@ha /* 0x811EC208@ha */
/* 8055BD94  84 03 C2 08 */	lwzu r0, data_811EC208@l(r3)  /* 0x811EC208@l */
/* 8055BD98  2C 00 00 01 */	cmpwi r0, 1
/* 8055BD9C  40 81 00 0C */	ble lbl_8055BDA8
/* 8055BDA0  38 00 00 00 */	li r0, 0
/* 8055BDA4  90 03 00 00 */	stw r0, 0(r3)
lbl_8055BDA8:
/* 8055BDA8  3C 80 81 1F */	lis r4, data_811EC208@ha /* 0x811EC208@ha */
/* 8055BDAC  3C 60 81 1F */	lis r3, aNMD_actor_p@ha /* 0x811EC20C@ha */
/* 8055BDB0  80 04 C2 08 */	lwz r0, data_811EC208@l(r4)  /* 0x811EC208@l */
/* 8055BDB4  38 63 C2 0C */	addi r3, r3, aNMD_actor_p@l /* 0x811EC20C@l */
/* 8055BDB8  54 00 10 3A */	slwi r0, r0, 2
/* 8055BDBC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055BDC0  7C 1E 00 40 */	cmplw r30, r0
/* 8055BDC4  40 82 00 24 */	bne lbl_8055BDE8
/* 8055BDC8  57 80 10 3A */	slwi r0, r28, 2
/* 8055BDCC  38 7F 31 C0 */	addi r3, r31, 0x31c0
/* 8055BDD0  7D 83 00 2E */	lwzx r12, r3, r0
/* 8055BDD4  7F C3 F3 78 */	mr r3, r30
/* 8055BDD8  7F 64 DB 78 */	mr r4, r27
/* 8055BDDC  7D 89 03 A6 */	mtctr r12
/* 8055BDE0  4E 80 04 21 */	bctrl 
/* 8055BDE4  48 00 00 0C */	b lbl_8055BDF0
lbl_8055BDE8:
/* 8055BDE8  38 00 FF FF */	li r0, -1
/* 8055BDEC  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_8055BDF0:
/* 8055BDF0  57 80 10 3A */	slwi r0, r28, 2
/* 8055BDF4  38 7F 31 C8 */	addi r3, r31, 0x31c8
/* 8055BDF8  7C A3 00 2E */	lwzx r5, r3, r0
/* 8055BDFC  7F C4 F3 78 */	mr r4, r30
/* 8055BE00  38 60 00 07 */	li r3, 7
/* 8055BE04  4B E3 E3 59 */	bl mDemo_Request
lbl_8055BE08:
/* 8055BE08  7F A3 EB 78 */	mr r3, r29
/* 8055BE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055BE10  4B B3 F1 05 */	bl func_8009AF14
/* 8055BE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055BE18  7C 08 03 A6 */	mtlr r0
/* 8055BE1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055BE20  4E 80 00 20 */	blr 
