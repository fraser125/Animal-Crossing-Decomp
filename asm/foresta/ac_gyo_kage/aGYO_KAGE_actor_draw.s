lbl_80425B58:
/* 80425B58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80425B5C  7C 08 02 A6 */	mflr r0
/* 80425B60  90 01 00 54 */	stw r0, 0x54(r1)
/* 80425B64  39 61 00 50 */	addi r11, r1, 0x50
/* 80425B68  4B C7 53 55 */	bl func_8009AEBC
/* 80425B6C  80 E3 01 9C */	lwz r7, 0x19c(r3)
/* 80425B70  7C 7B 1B 78 */	mr r27, r3
/* 80425B74  3C 60 80 64 */	lis r3, lit_561@ha /* 0x80643F3C@ha */
/* 80425B78  3C A0 43 30 */	lis r5, 0x4330
/* 80425B7C  38 C3 3F 3C */	addi r6, r3, lit_561@l /* 0x80643F3C@l */
/* 80425B80  A8 1B 01 A0 */	lha r0, 0x1a0(r27)
/* 80425B84  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80425B88  90 A1 00 08 */	stw r5, 8(r1)
/* 80425B8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80425B90  3C E0 80 64 */	lis r7, lit_558@ha /* 0x80643F30@ha */
/* 80425B94  90 61 00 0C */	stw r3, 0xc(r1)
/* 80425B98  3D 00 80 68 */	lis r8, data_80682B58@ha /* 0x80682B58@ha */
/* 80425B9C  C8 46 00 00 */	lfd f2, 0(r6)
/* 80425BA0  3B E8 2B 58 */	addi r31, r8, data_80682B58@l /* 0x80682B58@l */
/* 80425BA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80425BA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80425BAC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80425BB0  C0 67 3F 30 */	lfs f3, lit_558@l(r7)  /* 0x80643F30@l */
/* 80425BB4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80425BB8  A8 7B 00 DE */	lha r3, 0xde(r27)
/* 80425BBC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80425BC0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80425BC4  3C 63 00 01 */	addis r3, r3, 1
/* 80425BC8  83 C4 00 00 */	lwz r30, 0(r4)
/* 80425BCC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80425BD0  38 63 80 00 */	addi r3, r3, -32768
/* 80425BD4  FC 20 08 1E */	fctiwz f1, f1
/* 80425BD8  7C 77 07 34 */	extsh r23, r3
/* 80425BDC  AB 1B 00 DC */	lha r24, 0xdc(r27)
/* 80425BE0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80425BE4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80425BE8  FC 00 00 1E */	fctiwz f0, f0
/* 80425BEC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80425BF0  38 03 FF F6 */	addi r0, r3, -10
/* 80425BF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80425BF8  1F 40 00 06 */	mulli r26, r0, 6
/* 80425BFC  83 81 00 24 */	lwz r28, 0x24(r1)
/* 80425C00  4B FE 65 D5 */	bl Matrix_push
/* 80425C04  7F C3 F3 78 */	mr r3, r30
/* 80425C08  4B FB F5 51 */	bl _texture_z_light_fog_prim_xlu
/* 80425C0C  57 80 08 3C */	slwi r0, r28, 1
/* 80425C10  38 9F 00 34 */	addi r4, r31, 0x34
/* 80425C14  7C 64 02 14 */	add r3, r4, r0
/* 80425C18  2C 1A 00 00 */	cmpwi r26, 0
/* 80425C1C  7F 24 00 AE */	lbzx r25, r4, r0
/* 80425C20  8B A3 00 01 */	lbz r29, 1(r3)
/* 80425C24  41 81 00 08 */	bgt lbl_80425C2C
/* 80425C28  3B 40 00 00 */	li r26, 0
lbl_80425C2C:
/* 80425C2C  93 5B 01 A4 */	stw r26, 0x1a4(r27)
/* 80425C30  38 60 00 00 */	li r3, 0
/* 80425C34  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80425C38  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 80425C3C  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 80425C40  4B FE 66 C1 */	bl Matrix_translate
/* 80425C44  7F 03 C3 78 */	mr r3, r24
/* 80425C48  38 80 00 01 */	li r4, 1
/* 80425C4C  4B FE 68 6D */	bl Matrix_RotateX
/* 80425C50  7E E3 BB 78 */	mr r3, r23
/* 80425C54  38 80 00 01 */	li r4, 1
/* 80425C58  4B FE 6A 05 */	bl Matrix_RotateY
/* 80425C5C  3C 60 80 64 */	lis r3, lit_559@ha /* 0x80643F34@ha */
/* 80425C60  C0 1B 00 5C */	lfs f0, 0x5c(r27)
/* 80425C64  C0 23 3F 34 */	lfs f1, lit_559@l(r3)  /* 0x80643F34@l */
/* 80425C68  38 60 00 01 */	li r3, 1
/* 80425C6C  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 80425C70  EC 21 00 32 */	fmuls f1, f1, f0
/* 80425C74  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 80425C78  4B FE 67 75 */	bl Matrix_scale
/* 80425C7C  83 5E 02 E0 */	lwz r26, 0x2e0(r30)
/* 80425C80  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80425C84  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80425C88  7F C3 F3 78 */	mr r3, r30
/* 80425C8C  38 9A 00 08 */	addi r4, r26, 8
/* 80425C90  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 80425C94  90 1A 00 00 */	stw r0, 0(r26)
/* 80425C98  4B FE 77 3D */	bl _Matrix_to_Mtx_new
/* 80425C9C  90 7A 00 04 */	stw r3, 4(r26)
/* 80425CA0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80425CA4  3C 60 80 89 */	lis r3, act_gyoei02_00_modelT@ha /* 0x8088B4E0@ha */
/* 80425CA8  57 28 10 3A */	slwi r8, r25, 2
/* 80425CAC  81 7E 02 E0 */	lwz r11, 0x2e0(r30)
/* 80425CB0  39 44 00 20 */	addi r10, r4, 0x0020 /* 0xDB060020@l */
/* 80425CB4  39 3F 00 24 */	addi r9, r31, 0x24
/* 80425CB8  38 E4 00 24 */	addi r7, r4, 0x24
/* 80425CBC  38 0B 00 08 */	addi r0, r11, 8
/* 80425CC0  57 A6 10 3A */	slwi r6, r29, 2
/* 80425CC4  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 80425CC8  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80425CCC  3C 80 DE 00 */	lis r4, 0xde00
/* 80425CD0  38 03 B4 E0 */	addi r0, r3, act_gyoei02_00_modelT@l /* 0x8088B4E0@l */
/* 80425CD4  91 4B 00 00 */	stw r10, 0(r11)
/* 80425CD8  7C 69 40 2E */	lwzx r3, r9, r8
/* 80425CDC  90 6B 00 04 */	stw r3, 4(r11)
/* 80425CE0  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 80425CE4  38 68 00 08 */	addi r3, r8, 8
/* 80425CE8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80425CEC  90 E8 00 00 */	stw r7, 0(r8)
/* 80425CF0  7C 69 30 2E */	lwzx r3, r9, r6
/* 80425CF4  90 68 00 04 */	stw r3, 4(r8)
/* 80425CF8  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 80425CFC  38 66 00 08 */	addi r3, r6, 8
/* 80425D00  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80425D04  7C 65 E0 AE */	lbzx r3, r5, r28
/* 80425D08  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 80425D0C  90 66 00 00 */	stw r3, 0(r6)
/* 80425D10  80 7B 01 A4 */	lwz r3, 0x1a4(r27)
/* 80425D14  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80425D18  90 66 00 04 */	stw r3, 4(r6)
/* 80425D1C  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80425D20  38 65 00 08 */	addi r3, r5, 8
/* 80425D24  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80425D28  90 85 00 00 */	stw r4, 0(r5)
/* 80425D2C  90 05 00 04 */	stw r0, 4(r5)
/* 80425D30  4B FE 64 E5 */	bl Matrix_pull
/* 80425D34  39 61 00 50 */	addi r11, r1, 0x50
/* 80425D38  4B C7 51 D1 */	bl func_8009AF08
/* 80425D3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80425D40  7C 08 03 A6 */	mtlr r0
/* 80425D44  38 21 00 50 */	addi r1, r1, 0x50
/* 80425D48  4E 80 00 20 */	blr 
