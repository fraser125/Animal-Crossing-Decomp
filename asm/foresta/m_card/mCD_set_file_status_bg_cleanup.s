lbl_803F9178:
/* 803F9178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F917C  7C 08 02 A6 */	mflr r0
/* 803F9180  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9184  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9188  4B CA 1D 49 */	bl func_8009AED0
/* 803F918C  7C 9D 23 78 */	mr r29, r4
/* 803F9190  7C 7C 1B 78 */	mr r28, r3
/* 803F9194  7C BE 2B 78 */	mr r30, r5
/* 803F9198  3B E0 00 00 */	li r31, 0
/* 803F919C  7F A3 EB 78 */	mr r3, r29
/* 803F91A0  4B C9 50 C9 */	bl CARDGetResultCode
/* 803F91A4  90 7E 00 00 */	stw r3, 0(r30)
/* 803F91A8  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F91AC  2C 00 FF FF */	cmpwi r0, -1
/* 803F91B0  41 82 00 30 */	beq lbl_803F91E0
/* 803F91B4  2C 00 00 00 */	cmpwi r0, 0
/* 803F91B8  38 00 FF FF */	li r0, -1
/* 803F91BC  40 82 00 08 */	bne lbl_803F91C4
/* 803F91C0  38 00 00 01 */	li r0, 1
lbl_803F91C4:
/* 803F91C4  7C 1F 03 78 */	mr r31, r0
/* 803F91C8  7F 83 E3 78 */	mr r3, r28
/* 803F91CC  7F A4 EB 78 */	mr r4, r29
/* 803F91D0  4B FF EC 45 */	bl mCD_close_and_unmount
/* 803F91D4  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F91D8  38 03 00 01 */	addi r0, r3, 1
/* 803F91DC  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_803F91E0:
/* 803F91E0  7F E3 FB 78 */	mr r3, r31
/* 803F91E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803F91E8  4B CA 1D 35 */	bl func_8009AF1C
/* 803F91EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F91F0  7C 08 03 A6 */	mtlr r0
/* 803F91F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803F91F8  4E 80 00 20 */	blr 
