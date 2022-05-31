lbl_803F9608:
/* 803F9608  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F960C  7C 08 02 A6 */	mflr r0
/* 803F9610  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F9614  39 61 00 60 */	addi r11, r1, 0x60
/* 803F9618  4B CA 18 B5 */	bl func_8009AECC
/* 803F961C  7C 9F 23 78 */	mr r31, r4
/* 803F9620  7C 7B 1B 78 */	mr r27, r3
/* 803F9624  7C BC 2B 78 */	mr r28, r5
/* 803F9628  7D 1D 43 78 */	mr r29, r8
/* 803F962C  3B C0 00 00 */	li r30, 0
/* 803F9630  7F E3 FB 78 */	mr r3, r31
/* 803F9634  4B C9 4C 35 */	bl CARDGetResultCode
/* 803F9638  90 7C 00 00 */	stw r3, 0(r28)
/* 803F963C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9640  2C 00 00 00 */	cmpwi r0, 0
/* 803F9644  40 82 00 84 */	bne lbl_803F96C8
/* 803F9648  80 1B 00 04 */	lwz r0, 4(r27)
/* 803F964C  7F E3 FB 78 */	mr r3, r31
/* 803F9650  38 A1 00 08 */	addi r5, r1, 8
/* 803F9654  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803F9658  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 803F965C  4B C9 94 C9 */	bl func_80092B24
/* 803F9660  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9664  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9668  2C 00 00 00 */	cmpwi r0, 0
/* 803F966C  40 82 00 48 */	bne lbl_803F96B4
/* 803F9670  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 803F9674  7F E3 FB 78 */	mr r3, r31
/* 803F9678  38 A1 00 08 */	addi r5, r1, 8
/* 803F967C  7C 00 EB 78 */	or r0, r0, r29
/* 803F9680  98 01 00 3C */	stb r0, 0x3c(r1)
/* 803F9684  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 803F9688  4B C9 97 AD */	bl __CARDSetStatusEx
/* 803F968C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9690  2C 00 00 00 */	cmpwi r0, 0
/* 803F9694  40 82 00 18 */	bne lbl_803F96AC
/* 803F9698  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 803F969C  3B C0 00 01 */	li r30, 1
/* 803F96A0  38 03 00 01 */	addi r0, r3, 1
/* 803F96A4  90 1B 00 18 */	stw r0, 0x18(r27)
/* 803F96A8  48 00 00 10 */	b lbl_803F96B8
lbl_803F96AC:
/* 803F96AC  3B C0 FF FF */	li r30, -1
/* 803F96B0  48 00 00 08 */	b lbl_803F96B8
lbl_803F96B4:
/* 803F96B4  3B C0 FF FF */	li r30, -1
lbl_803F96B8:
/* 803F96B8  7F 63 DB 78 */	mr r3, r27
/* 803F96BC  7F E4 FB 78 */	mr r4, r31
/* 803F96C0  4B FF E7 55 */	bl mCD_close_and_unmount
/* 803F96C4  48 00 00 18 */	b lbl_803F96DC
lbl_803F96C8:
/* 803F96C8  2C 00 FF FF */	cmpwi r0, -1
/* 803F96CC  41 82 00 10 */	beq lbl_803F96DC
/* 803F96D0  7F E3 FB 78 */	mr r3, r31
/* 803F96D4  4B C9 71 0D */	bl CARDUnmount
/* 803F96D8  3B C0 FF FF */	li r30, -1
lbl_803F96DC:
/* 803F96DC  7F C3 F3 78 */	mr r3, r30
/* 803F96E0  39 61 00 60 */	addi r11, r1, 0x60
/* 803F96E4  4B CA 18 35 */	bl func_8009AF18
/* 803F96E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F96EC  7C 08 03 A6 */	mtlr r0
/* 803F96F0  38 21 00 60 */	addi r1, r1, 0x60
/* 803F96F4  4E 80 00 20 */	blr 
