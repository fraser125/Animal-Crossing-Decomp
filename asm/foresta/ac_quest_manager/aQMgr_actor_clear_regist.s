lbl_804859B4:
/* 804859B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804859B8  7C 08 02 A6 */	mflr r0
/* 804859BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804859C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804859C4  4B C1 55 09 */	bl func_8009AECC
/* 804859C8  3C A0 80 3C */	lis r5, none_proc1@ha /* 0x803BB54C@ha */
/* 804859CC  7C 7B 1B 78 */	mr r27, r3
/* 804859D0  7C 9C 23 78 */	mr r28, r4
/* 804859D4  3B C0 00 00 */	li r30, 0
/* 804859D8  3B A5 B5 4C */	addi r29, r5, none_proc1@l /* 0x803BB54C@l */
/* 804859DC  3B E0 FF FF */	li r31, -1
/* 804859E0  48 00 00 30 */	b lbl_80485A10
lbl_804859E4:
/* 804859E4  93 BB 00 00 */	stw r29, 0(r27)
/* 804859E8  38 7B 00 10 */	addi r3, r27, 0x10
/* 804859EC  93 DB 00 04 */	stw r30, 4(r27)
/* 804859F0  93 DB 00 08 */	stw r30, 8(r27)
/* 804859F4  93 DB 00 0C */	stw r30, 0xc(r27)
/* 804859F8  4B F4 59 8D */	bl mNpc_ClearAnimalPersonalID
/* 804859FC  38 7B 00 1E */	addi r3, r27, 0x1e
/* 80485A00  4B F4 59 85 */	bl mNpc_ClearAnimalPersonalID
/* 80485A04  93 FB 00 30 */	stw r31, 0x30(r27)
/* 80485A08  3B 7B 00 34 */	addi r27, r27, 0x34
/* 80485A0C  3B 9C FF FF */	addi r28, r28, -1
lbl_80485A10:
/* 80485A10  2C 1C 00 00 */	cmpwi r28, 0
/* 80485A14  40 82 FF D0 */	bne lbl_804859E4
/* 80485A18  39 61 00 20 */	addi r11, r1, 0x20
/* 80485A1C  4B C1 54 FD */	bl func_8009AF18
/* 80485A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80485A24  7C 08 03 A6 */	mtlr r0
/* 80485A28  38 21 00 20 */	addi r1, r1, 0x20
/* 80485A2C  4E 80 00 20 */	blr 
