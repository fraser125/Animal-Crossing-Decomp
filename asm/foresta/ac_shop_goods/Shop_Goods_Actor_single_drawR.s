lbl_8049DC10:
/* 8049DC10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049DC14  7C 08 02 A6 */	mflr r0
/* 8049DC18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049DC1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049DC20  4B BF D2 9D */	bl func_8009AEBC
/* 8049DC24  3D 20 81 1D */	lis r9, picture_count@ha /* 0x811CF5AC@ha */
/* 8049DC28  7C 78 1B 78 */	mr r24, r3
/* 8049DC2C  80 09 F5 AC */	lwz r0, picture_count@l(r9)  /* 0x811CF5AC@l */
/* 8049DC30  3D 40 80 64 */	lis r10, data_80644D3C@ha /* 0x80644D3C@ha */
/* 8049DC34  7C B9 2B 78 */	mr r25, r5
/* 8049DC38  7C DA 33 78 */	mr r26, r6
/* 8049DC3C  7C FB 3B 78 */	mr r27, r7
/* 8049DC40  7D 1C 43 78 */	mr r28, r8
/* 8049DC44  38 AA 4D 3C */	addi r5, r10, data_80644D3C@l /* 0x80644D3C@l */
/* 8049DC48  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8049DC4C  38 60 00 00 */	li r3, 0
/* 8049DC50  7C 09 03 A6 */	mtctr r0
/* 8049DC54  2C 00 00 00 */	cmpwi r0, 0
/* 8049DC58  40 81 01 FC */	ble lbl_8049DE54
lbl_8049DC5C:
/* 8049DC5C  7F E5 1A 14 */	add r31, r5, r3
/* 8049DC60  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8049DC64  7C 04 00 40 */	cmplw r4, r0
/* 8049DC68  41 80 01 E4 */	blt lbl_8049DE4C
/* 8049DC6C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8049DC70  7C 04 00 40 */	cmplw r4, r0
/* 8049DC74  41 81 01 D8 */	bgt lbl_8049DE4C
/* 8049DC78  3C 60 81 1D */	lis r3, mode@ha /* 0x811CF5B0@ha */
/* 8049DC7C  A8 03 F5 B0 */	lha r0, mode@l(r3)  /* 0x811CF5B0@l */
/* 8049DC80  54 00 10 3A */	slwi r0, r0, 2
/* 8049DC84  7C 7F 02 14 */	add r3, r31, r0
/* 8049DC88  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8049DC8C  7C 60 00 D0 */	neg r3, r0
/* 8049DC90  30 03 FF FF */	addic r0, r3, -1
/* 8049DC94  7F C0 19 11 */	subfe. r30, r0, r3
/* 8049DC98  41 82 00 0C */	beq lbl_8049DCA4
/* 8049DC9C  80 78 00 00 */	lwz r3, 0(r24)
/* 8049DCA0  4B F4 74 B9 */	bl _texture_z_light_fog_prim_xlu
lbl_8049DCA4:
/* 8049DCA4  80 78 00 00 */	lwz r3, 0(r24)
/* 8049DCA8  4B F4 74 61 */	bl _texture_z_light_fog_prim
/* 8049DCAC  83 B8 00 00 */	lwz r29, 0(r24)
/* 8049DCB0  38 78 1D 90 */	addi r3, r24, 0x1d90
/* 8049DCB4  7F A4 EB 78 */	mr r4, r29
/* 8049DCB8  4B F1 E4 85 */	bl Global_light_read
/* 8049DCBC  80 98 1D 90 */	lwz r4, 0x1d90(r24)
/* 8049DCC0  7C 77 1B 78 */	mr r23, r3
/* 8049DCC4  7F 25 CB 78 */	mr r5, r25
/* 8049DCC8  4B F1 E2 69 */	bl LightsN_list_check
/* 8049DCCC  80 98 00 00 */	lwz r4, 0(r24)
/* 8049DCD0  7E E3 BB 78 */	mr r3, r23
/* 8049DCD4  4B F1 DD 25 */	bl LightsN_disp
/* 8049DCD8  C0 39 00 00 */	lfs f1, 0(r25)
/* 8049DCDC  38 60 00 00 */	li r3, 0
/* 8049DCE0  C0 59 00 04 */	lfs f2, 4(r25)
/* 8049DCE4  C0 79 00 08 */	lfs f3, 8(r25)
/* 8049DCE8  4B F6 E6 19 */	bl Matrix_translate
/* 8049DCEC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8049DCF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049DCF4  41 82 00 18 */	beq lbl_8049DD0C
/* 8049DCF8  2C 1C 00 01 */	cmpwi r28, 1
/* 8049DCFC  40 82 00 10 */	bne lbl_8049DD0C
/* 8049DD00  7F 63 DB 78 */	mr r3, r27
/* 8049DD04  38 80 00 01 */	li r4, 1
/* 8049DD08  4B F6 E9 55 */	bl Matrix_RotateY
lbl_8049DD0C:
/* 8049DD0C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8049DD10  38 60 00 01 */	li r3, 1
/* 8049DD14  C0 5A 00 04 */	lfs f2, 4(r26)
/* 8049DD18  C0 7A 00 08 */	lfs f3, 8(r26)
/* 8049DD1C  4B F6 E6 D1 */	bl Matrix_scale
/* 8049DD20  83 3D 02 D0 */	lwz r25, 0x2d0(r29)
/* 8049DD24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049DD28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049DD2C  38 79 00 08 */	addi r3, r25, 8
/* 8049DD30  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8049DD34  90 19 00 00 */	stw r0, 0(r25)
/* 8049DD38  80 78 00 00 */	lwz r3, 0(r24)
/* 8049DD3C  4B F6 F6 99 */	bl _Matrix_to_Mtx_new
/* 8049DD40  90 79 00 04 */	stw r3, 4(r25)
/* 8049DD44  3C 60 81 1D */	lis r3, mode@ha /* 0x811CF5B0@ha */
/* 8049DD48  3C C0 DE 00 */	lis r6, 0xde00
/* 8049DD4C  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8049DD50  38 A3 F5 B0 */	addi r5, r3, mode@l /* 0x811CF5B0@l */
/* 8049DD54  38 04 00 08 */	addi r0, r4, 8
/* 8049DD58  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8049DD5C  90 C4 00 00 */	stw r6, 0(r4)
/* 8049DD60  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DD64  54 00 10 3A */	slwi r0, r0, 2
/* 8049DD68  7C 7F 02 14 */	add r3, r31, r0
/* 8049DD6C  80 03 00 04 */	lwz r0, 4(r3)
/* 8049DD70  90 04 00 04 */	stw r0, 4(r4)
/* 8049DD74  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DD78  54 00 10 3A */	slwi r0, r0, 2
/* 8049DD7C  7C 7F 02 14 */	add r3, r31, r0
/* 8049DD80  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8049DD84  28 00 00 00 */	cmplwi r0, 0
/* 8049DD88  41 82 00 28 */	beq lbl_8049DDB0
/* 8049DD8C  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8049DD90  38 04 00 08 */	addi r0, r4, 8
/* 8049DD94  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8049DD98  90 C4 00 00 */	stw r6, 0(r4)
/* 8049DD9C  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DDA0  54 00 10 3A */	slwi r0, r0, 2
/* 8049DDA4  7C 7F 02 14 */	add r3, r31, r0
/* 8049DDA8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8049DDAC  90 04 00 04 */	stw r0, 4(r4)
lbl_8049DDB0:
/* 8049DDB0  2C 1E 00 00 */	cmpwi r30, 0
/* 8049DDB4  41 82 00 A0 */	beq lbl_8049DE54
/* 8049DDB8  83 3D 02 E0 */	lwz r25, 0x2e0(r29)
/* 8049DDBC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049DDC0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049DDC4  38 79 00 08 */	addi r3, r25, 8
/* 8049DDC8  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8049DDCC  90 19 00 00 */	stw r0, 0(r25)
/* 8049DDD0  80 78 00 00 */	lwz r3, 0(r24)
/* 8049DDD4  4B F6 F6 01 */	bl _Matrix_to_Mtx_new
/* 8049DDD8  90 79 00 04 */	stw r3, 4(r25)
/* 8049DDDC  3C 60 81 1D */	lis r3, mode@ha /* 0x811CF5B0@ha */
/* 8049DDE0  3C C0 DE 00 */	lis r6, 0xde00
/* 8049DDE4  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 8049DDE8  38 A3 F5 B0 */	addi r5, r3, mode@l /* 0x811CF5B0@l */
/* 8049DDEC  38 04 00 08 */	addi r0, r4, 8
/* 8049DDF0  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8049DDF4  90 C4 00 00 */	stw r6, 0(r4)
/* 8049DDF8  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DDFC  54 00 10 3A */	slwi r0, r0, 2
/* 8049DE00  7C 7F 02 14 */	add r3, r31, r0
/* 8049DE04  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8049DE08  90 04 00 04 */	stw r0, 4(r4)
/* 8049DE0C  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DE10  54 00 10 3A */	slwi r0, r0, 2
/* 8049DE14  7C 7F 02 14 */	add r3, r31, r0
/* 8049DE18  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8049DE1C  28 00 00 00 */	cmplwi r0, 0
/* 8049DE20  41 82 00 34 */	beq lbl_8049DE54
/* 8049DE24  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 8049DE28  38 04 00 08 */	addi r0, r4, 8
/* 8049DE2C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8049DE30  90 C4 00 00 */	stw r6, 0(r4)
/* 8049DE34  A8 05 00 00 */	lha r0, 0(r5)
/* 8049DE38  54 00 10 3A */	slwi r0, r0, 2
/* 8049DE3C  7C 7F 02 14 */	add r3, r31, r0
/* 8049DE40  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8049DE44  90 04 00 04 */	stw r0, 4(r4)
/* 8049DE48  48 00 00 0C */	b lbl_8049DE54
lbl_8049DE4C:
/* 8049DE4C  38 63 00 28 */	addi r3, r3, 0x28
/* 8049DE50  42 00 FE 0C */	bdnz lbl_8049DC5C
lbl_8049DE54:
/* 8049DE54  39 61 00 30 */	addi r11, r1, 0x30
/* 8049DE58  4B BF D0 B1 */	bl func_8009AF08
/* 8049DE5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049DE60  7C 08 03 A6 */	mtlr r0
/* 8049DE64  38 21 00 30 */	addi r1, r1, 0x30
/* 8049DE68  4E 80 00 20 */	blr 
