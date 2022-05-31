lbl_8061E258:
/* 8061E258  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061E25C  7C 08 02 A6 */	mflr r0
/* 8061E260  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061E264  39 61 00 40 */	addi r11, r1, 0x40
/* 8061E268  4B A7 CC 65 */	bl func_8009AECC
/* 8061E26C  7C BD 2B 78 */	mr r29, r5
/* 8061E270  7C 7B 1B 78 */	mr r27, r3
/* 8061E274  B1 01 00 10 */	sth r8, 0x10(r1)
/* 8061E278  7C 9C 23 78 */	mr r28, r4
/* 8061E27C  7C DF 33 78 */	mr r31, r6
/* 8061E280  7C FE 3B 78 */	mr r30, r7
/* 8061E284  B3 A1 00 12 */	sth r29, 0x12(r1)
/* 8061E288  7F A3 EB 78 */	mr r3, r29
/* 8061E28C  4B D9 C8 65 */	bl sin_s
/* 8061E290  3C 60 80 65 */	lis r3, data_8064CBE4@ha /* 0x8064CBE4@ha */
/* 8061E294  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8061E298  38 83 CB E4 */	addi r4, r3, data_8064CBE4@l /* 0x8064CBE4@l */
/* 8061E29C  7F A3 EB 78 */	mr r3, r29
/* 8061E2A0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061E2A4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E2A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E2AC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8061E2B0  4B D9 C7 ED */	bl cos_s
/* 8061E2B4  3C 80 80 65 */	lis r4, data_8064CBE4@ha /* 0x8064CBE4@ha */
/* 8061E2B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061E2BC  C0 44 CB E4 */	lfs f2, data_8064CBE4@l(r4)  /* 0x8064CBE4@l */
/* 8061E2C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061E2C4  3D 63 00 02 */	addis r11, r3, 2
/* 8061E2C8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8061E2CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E2D0  7F E6 FB 78 */	mr r6, r31
/* 8061E2D4  7F C8 F3 78 */	mr r8, r30
/* 8061E2D8  38 00 00 00 */	li r0, 0
/* 8061E2DC  7F 89 E3 78 */	mr r9, r28
/* 8061E2E0  38 81 00 14 */	addi r4, r1, 0x14
/* 8061E2E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E2E8  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061E2EC  38 60 00 43 */	li r3, 0x43
/* 8061E2F0  38 A0 00 00 */	li r5, 0
/* 8061E2F4  39 40 00 00 */	li r10, 0
/* 8061E2F8  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8061E2FC  83 DB 00 00 */	lwz r30, 0(r27)
/* 8061E300  83 FB 00 04 */	lwz r31, 4(r27)
/* 8061E304  81 9B 00 08 */	lwz r12, 8(r27)
/* 8061E308  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8061E30C  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8061E310  91 81 00 1C */	stw r12, 0x1c(r1)
/* 8061E314  90 01 00 08 */	stw r0, 8(r1)
/* 8061E318  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061E31C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061E320  7D 89 03 A6 */	mtctr r12
/* 8061E324  4E 80 04 21 */	bctrl 
/* 8061E328  39 61 00 40 */	addi r11, r1, 0x40
/* 8061E32C  4B A7 CB ED */	bl func_8009AF18
/* 8061E330  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061E334  7C 08 03 A6 */	mtlr r0
/* 8061E338  38 21 00 40 */	addi r1, r1, 0x40
/* 8061E33C  4E 80 00 20 */	blr 
