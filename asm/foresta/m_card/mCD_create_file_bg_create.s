lbl_803F9550:
/* 803F9550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9554  7C 08 02 A6 */	mflr r0
/* 803F9558  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F955C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9560  4B CA 19 69 */	bl func_8009AEC8
/* 803F9564  7C 9F 23 78 */	mr r31, r4
/* 803F9568  7C 7A 1B 78 */	mr r26, r3
/* 803F956C  7C BB 2B 78 */	mr r27, r5
/* 803F9570  7C FC 3B 78 */	mr r28, r7
/* 803F9574  7D 3D 4B 78 */	mr r29, r9
/* 803F9578  7F E3 FB 78 */	mr r3, r31
/* 803F957C  3B C0 00 00 */	li r30, 0
/* 803F9580  4B C9 4C E9 */	bl CARDGetResultCode
/* 803F9584  90 7B 00 00 */	stw r3, 0(r27)
/* 803F9588  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F958C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9590  40 82 00 50 */	bne lbl_803F95E0
/* 803F9594  7F E3 FB 78 */	mr r3, r31
/* 803F9598  7F 84 E3 78 */	mr r4, r28
/* 803F959C  7F A5 EB 78 */	mr r5, r29
/* 803F95A0  7F 46 D3 78 */	mr r6, r26
/* 803F95A4  38 E0 00 00 */	li r7, 0
/* 803F95A8  4B C9 82 01 */	bl CARDCreateAsync
/* 803F95AC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F95B0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F95B4  2C 00 00 00 */	cmpwi r0, 0
/* 803F95B8  40 82 00 18 */	bne lbl_803F95D0
/* 803F95BC  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803F95C0  3B C0 00 01 */	li r30, 1
/* 803F95C4  38 03 00 01 */	addi r0, r3, 1
/* 803F95C8  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F95CC  48 00 00 20 */	b lbl_803F95EC
lbl_803F95D0:
/* 803F95D0  7F E3 FB 78 */	mr r3, r31
/* 803F95D4  4B C9 72 0D */	bl CARDUnmount
/* 803F95D8  3B C0 FF FF */	li r30, -1
/* 803F95DC  48 00 00 10 */	b lbl_803F95EC
lbl_803F95E0:
/* 803F95E0  2C 00 FF FF */	cmpwi r0, -1
/* 803F95E4  41 82 00 08 */	beq lbl_803F95EC
/* 803F95E8  3B C0 FF FF */	li r30, -1
lbl_803F95EC:
/* 803F95EC  7F C3 F3 78 */	mr r3, r30
/* 803F95F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F95F4  4B CA 19 21 */	bl func_8009AF14
/* 803F95F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F95FC  7C 08 03 A6 */	mtlr r0
/* 803F9600  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9604  4E 80 00 20 */	blr 
