lbl_805439F0:
/* 805439F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805439F4  7C 08 02 A6 */	mflr r0
/* 805439F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805439FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80543A00  4B B5 74 D5 */	bl func_8009AED4
/* 80543A04  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 80543A08  7C 7D 1B 78 */	mr r29, r3
/* 80543A0C  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 80543A10  7C BE 2B 78 */	mr r30, r5
/* 80543A14  3C 63 00 02 */	addis r3, r3, 2
/* 80543A18  7C DF 33 78 */	mr r31, r6
/* 80543A1C  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 80543A20  28 03 00 00 */	cmplwi r3, 0
/* 80543A24  41 82 00 48 */	beq lbl_80543A6C
/* 80543A28  81 83 00 00 */	lwz r12, 0(r3)
/* 80543A2C  7F A5 EB 78 */	mr r5, r29
/* 80543A30  7C 86 23 78 */	mr r6, r4
/* 80543A34  7F C3 07 34 */	extsh r3, r30
/* 80543A38  38 80 00 04 */	li r4, 4
/* 80543A3C  38 E0 FF FF */	li r7, -1
/* 80543A40  39 00 00 00 */	li r8, 0
/* 80543A44  7D 89 03 A6 */	mtctr r12
/* 80543A48  4E 80 04 21 */	bctrl 
/* 80543A4C  7C 65 1B 79 */	or. r5, r3, r3
/* 80543A50  41 82 00 1C */	beq lbl_80543A6C
/* 80543A54  B3 DD 09 80 */	sth r30, 0x980(r29)
/* 80543A58  38 65 00 28 */	addi r3, r5, 0x28
/* 80543A5C  38 9D 00 28 */	addi r4, r29, 0x28
/* 80543A60  B3 FD 09 82 */	sth r31, 0x982(r29)
/* 80543A64  90 BD 09 84 */	stw r5, 0x984(r29)
/* 80543A68  4B E7 74 55 */	bl xyz_t_move
lbl_80543A6C:
/* 80543A6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80543A70  4B B5 74 B1 */	bl func_8009AF20
/* 80543A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80543A78  7C 08 03 A6 */	mtlr r0
/* 80543A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80543A80  4E 80 00 20 */	blr 
