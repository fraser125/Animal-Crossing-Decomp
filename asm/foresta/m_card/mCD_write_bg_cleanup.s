lbl_803F82E8:
/* 803F82E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F82EC  7C 08 02 A6 */	mflr r0
/* 803F82F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F82F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803F82F8  4B CA 2B D9 */	bl func_8009AED0
/* 803F82FC  7C 9D 23 78 */	mr r29, r4
/* 803F8300  7C 7C 1B 78 */	mr r28, r3
/* 803F8304  7C BE 2B 78 */	mr r30, r5
/* 803F8308  3B E0 00 00 */	li r31, 0
/* 803F830C  7F A3 EB 78 */	mr r3, r29
/* 803F8310  4B C9 5F 59 */	bl CARDGetResultCode
/* 803F8314  90 7E 00 00 */	stw r3, 0(r30)
/* 803F8318  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F831C  2C 00 FF FF */	cmpwi r0, -1
/* 803F8320  41 82 00 20 */	beq lbl_803F8340
/* 803F8324  7F 83 E3 78 */	mr r3, r28
/* 803F8328  7F A4 EB 78 */	mr r4, r29
/* 803F832C  4B FF FA E9 */	bl mCD_close_and_unmount
/* 803F8330  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F8334  3B E0 00 01 */	li r31, 1
/* 803F8338  38 03 00 01 */	addi r0, r3, 1
/* 803F833C  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_803F8340:
/* 803F8340  7F E3 FB 78 */	mr r3, r31
/* 803F8344  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8348  4B CA 2B D5 */	bl func_8009AF1C
/* 803F834C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8350  7C 08 03 A6 */	mtlr r0
/* 803F8354  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8358  4E 80 00 20 */	blr 
