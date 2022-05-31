lbl_804C7064:
/* 804C7064  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C7068  7C 08 02 A6 */	mflr r0
/* 804C706C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C7070  39 61 00 30 */	addi r11, r1, 0x30
/* 804C7074  4B BD 3E 61 */	bl func_8009AED4
/* 804C7078  7C 7D 1B 78 */	mr r29, r3
/* 804C707C  3B C0 00 00 */	li r30, 0
/* 804C7080  3B E0 00 00 */	li r31, 0
lbl_804C7084:
/* 804C7084  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804C7088  2C 00 00 00 */	cmpwi r0, 0
/* 804C708C  41 82 00 38 */	beq lbl_804C70C4
/* 804C7090  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 804C7094  38 81 00 08 */	addi r4, r1, 8
/* 804C7098  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 804C709C  38 A0 00 01 */	li r5, 1
/* 804C70A0  90 61 00 08 */	stw r3, 8(r1)
/* 804C70A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C70A8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 804C70AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C70B0  A0 7D 00 42 */	lhz r3, 0x42(r29)
/* 804C70B4  38 03 FF F9 */	addi r0, r3, -7
/* 804C70B8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804C70BC  4B EE 07 75 */	bl mFI_SetFG_common
/* 804C70C0  B3 FD 00 4C */	sth r31, 0x4c(r29)
lbl_804C70C4:
/* 804C70C4  3B DE 00 01 */	addi r30, r30, 1
/* 804C70C8  3B BD 00 58 */	addi r29, r29, 0x58
/* 804C70CC  2C 1E 00 05 */	cmpwi r30, 5
/* 804C70D0  41 80 FF B4 */	blt lbl_804C7084
/* 804C70D4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C70D8  4B BD 3E 49 */	bl func_8009AF20
/* 804C70DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C70E0  7C 08 03 A6 */	mtlr r0
/* 804C70E4  38 21 00 30 */	addi r1, r1, 0x30
/* 804C70E8  4E 80 00 20 */	blr 
