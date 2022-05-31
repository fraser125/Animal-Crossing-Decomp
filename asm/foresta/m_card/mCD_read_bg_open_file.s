lbl_803F899C:
/* 803F899C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F89A0  7C 08 02 A6 */	mflr r0
/* 803F89A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F89A8  39 61 00 30 */	addi r11, r1, 0x30
/* 803F89AC  4B CA 25 15 */	bl func_8009AEC0
/* 803F89B0  7C 9F 23 78 */	mr r31, r4
/* 803F89B4  7C 78 1B 78 */	mr r24, r3
/* 803F89B8  7C B9 2B 78 */	mr r25, r5
/* 803F89BC  7C DA 33 78 */	mr r26, r6
/* 803F89C0  7C FB 3B 78 */	mr r27, r7
/* 803F89C4  7D 1C 43 78 */	mr r28, r8
/* 803F89C8  7D 5D 53 78 */	mr r29, r10
/* 803F89CC  7F E3 FB 78 */	mr r3, r31
/* 803F89D0  3B C0 00 00 */	li r30, 0
/* 803F89D4  4B C9 58 95 */	bl CARDGetResultCode
/* 803F89D8  90 79 00 00 */	stw r3, 0(r25)
/* 803F89DC  80 19 00 00 */	lwz r0, 0(r25)
/* 803F89E0  2C 00 00 00 */	cmpwi r0, 0
/* 803F89E4  40 82 00 80 */	bne lbl_803F8A64
/* 803F89E8  7F E3 FB 78 */	mr r3, r31
/* 803F89EC  7F 64 DB 78 */	mr r4, r27
/* 803F89F0  7F 05 C3 78 */	mr r5, r24
/* 803F89F4  4B C9 8A B1 */	bl CARDOpen
/* 803F89F8  90 79 00 00 */	stw r3, 0(r25)
/* 803F89FC  80 19 00 00 */	lwz r0, 0(r25)
/* 803F8A00  2C 00 00 00 */	cmpwi r0, 0
/* 803F8A04  40 82 00 50 */	bne lbl_803F8A54
/* 803F8A08  7F 03 C3 78 */	mr r3, r24
/* 803F8A0C  7F 44 D3 78 */	mr r4, r26
/* 803F8A10  7F 85 E3 78 */	mr r5, r28
/* 803F8A14  7F A6 EB 78 */	mr r6, r29
/* 803F8A18  38 E0 00 00 */	li r7, 0
/* 803F8A1C  4B C9 92 DD */	bl CARDReadAsync
/* 803F8A20  90 79 00 00 */	stw r3, 0(r25)
/* 803F8A24  80 19 00 00 */	lwz r0, 0(r25)
/* 803F8A28  2C 00 00 00 */	cmpwi r0, 0
/* 803F8A2C  40 82 00 14 */	bne lbl_803F8A40
/* 803F8A30  38 00 00 04 */	li r0, 4
/* 803F8A34  3B C0 00 01 */	li r30, 1
/* 803F8A38  90 18 00 18 */	stw r0, 0x18(r24)
/* 803F8A3C  48 00 00 4C */	b lbl_803F8A88
lbl_803F8A40:
/* 803F8A40  7F 03 C3 78 */	mr r3, r24
/* 803F8A44  7F E4 FB 78 */	mr r4, r31
/* 803F8A48  4B FF F3 CD */	bl mCD_close_and_unmount
/* 803F8A4C  3B C0 FF FF */	li r30, -1
/* 803F8A50  48 00 00 38 */	b lbl_803F8A88
lbl_803F8A54:
/* 803F8A54  7F E3 FB 78 */	mr r3, r31
/* 803F8A58  4B C9 7D 89 */	bl CARDUnmount
/* 803F8A5C  3B C0 FF FF */	li r30, -1
/* 803F8A60  48 00 00 28 */	b lbl_803F8A88
lbl_803F8A64:
/* 803F8A64  2C 00 FF FF */	cmpwi r0, -1
/* 803F8A68  41 82 00 20 */	beq lbl_803F8A88
/* 803F8A6C  2C 00 FF FA */	cmpwi r0, -6
/* 803F8A70  41 82 00 0C */	beq lbl_803F8A7C
/* 803F8A74  2C 00 FF F3 */	cmpwi r0, -13
/* 803F8A78  40 82 00 0C */	bne lbl_803F8A84
lbl_803F8A7C:
/* 803F8A7C  7F E3 FB 78 */	mr r3, r31
/* 803F8A80  4B C9 7D 61 */	bl CARDUnmount
lbl_803F8A84:
/* 803F8A84  3B C0 FF FF */	li r30, -1
lbl_803F8A88:
/* 803F8A88  7F C3 F3 78 */	mr r3, r30
/* 803F8A8C  39 61 00 30 */	addi r11, r1, 0x30
/* 803F8A90  4B CA 24 7D */	bl func_8009AF0C
/* 803F8A94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F8A98  7C 08 03 A6 */	mtlr r0
/* 803F8A9C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F8AA0  4E 80 00 20 */	blr 
