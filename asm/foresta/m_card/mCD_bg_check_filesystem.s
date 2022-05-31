lbl_803F8044:
/* 803F8044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8048  7C 08 02 A6 */	mflr r0
/* 803F804C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8050  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8054  4B CA 2E 7D */	bl func_8009AED0
/* 803F8058  7C 9F 23 78 */	mr r31, r4
/* 803F805C  7C 7C 1B 78 */	mr r28, r3
/* 803F8060  7C BD 2B 78 */	mr r29, r5
/* 803F8064  3B C0 00 00 */	li r30, 0
/* 803F8068  7F E3 FB 78 */	mr r3, r31
/* 803F806C  4B C9 61 FD */	bl CARDGetResultCode
/* 803F8070  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8074  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8078  2C 00 00 00 */	cmpwi r0, 0
/* 803F807C  40 82 00 44 */	bne lbl_803F80C0
/* 803F8080  7F E3 FB 78 */	mr r3, r31
/* 803F8084  38 80 00 00 */	li r4, 0
/* 803F8088  4B C9 7C C9 */	bl CARDCheckAsync
/* 803F808C  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8090  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8094  2C 00 00 00 */	cmpwi r0, 0
/* 803F8098  40 82 00 18 */	bne lbl_803F80B0
/* 803F809C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F80A0  3B C0 00 01 */	li r30, 1
/* 803F80A4  38 03 00 01 */	addi r0, r3, 1
/* 803F80A8  90 1C 00 18 */	stw r0, 0x18(r28)
/* 803F80AC  48 00 00 20 */	b lbl_803F80CC
lbl_803F80B0:
/* 803F80B0  7F E3 FB 78 */	mr r3, r31
/* 803F80B4  4B C9 87 2D */	bl CARDUnmount
/* 803F80B8  3B C0 FF FF */	li r30, -1
/* 803F80BC  48 00 00 10 */	b lbl_803F80CC
lbl_803F80C0:
/* 803F80C0  2C 00 FF FF */	cmpwi r0, -1
/* 803F80C4  41 82 00 08 */	beq lbl_803F80CC
/* 803F80C8  3B C0 FF FF */	li r30, -1
lbl_803F80CC:
/* 803F80CC  7F C3 F3 78 */	mr r3, r30
/* 803F80D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F80D4  4B CA 2E 49 */	bl func_8009AF1C
/* 803F80D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F80DC  7C 08 03 A6 */	mtlr r0
/* 803F80E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F80E4  4E 80 00 20 */	blr 
