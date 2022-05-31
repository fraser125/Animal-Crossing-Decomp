lbl_8054BA1C:
/* 8054BA1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BA20  7C 08 02 A6 */	mflr r0
/* 8054BA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BA28  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BA2C  4B B4 F4 A5 */	bl func_8009AED0
/* 8054BA30  7C 7C 1B 78 */	mr r28, r3
/* 8054BA34  7C 9D 23 78 */	mr r29, r4
/* 8054BA38  A0 63 09 B4 */	lhz r3, 0x9b4(r3)
/* 8054BA3C  37 C3 D3 00 */	addic. r30, r3, -11520
/* 8054BA40  41 80 00 0C */	blt lbl_8054BA4C
/* 8054BA44  2C 1E 00 28 */	cmpwi r30, 0x28
/* 8054BA48  41 80 00 08 */	blt lbl_8054BA50
lbl_8054BA4C:
/* 8054BA4C  3B C0 00 00 */	li r30, 0
lbl_8054BA50:
/* 8054BA50  4B E7 3C 59 */	bl func_803BF6A8
/* 8054BA54  3C 80 80 6A */	lis r4, msg_no_707@ha /* 0x806A5030@ha */
/* 8054BA58  57 DE 10 3A */	slwi r30, r30, 2
/* 8054BA5C  3B E4 50 30 */	addi r31, r4, msg_no_707@l /* 0x806A5030@l */
/* 8054BA60  7C 9F F0 2E */	lwzx r4, r31, r30
/* 8054BA64  4B E7 45 61 */	bl mMsg_Set_continue_msg_num
/* 8054BA68  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8054BA6C  7F 83 E3 78 */	mr r3, r28
/* 8054BA70  7F A4 EB 78 */	mr r4, r29
/* 8054BA74  38 A0 00 1F */	li r5, 0x1f
/* 8054BA78  90 1C 09 AC */	stw r0, 0x9ac(r28)
/* 8054BA7C  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054BA80  7D 89 03 A6 */	mtctr r12
/* 8054BA84  4E 80 04 21 */	bctrl 
/* 8054BA88  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BA8C  4B B4 F4 91 */	bl func_8009AF1C
/* 8054BA90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BA94  7C 08 03 A6 */	mtlr r0
/* 8054BA98  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BA9C  4E 80 00 20 */	blr 
