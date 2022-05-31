lbl_80579AC0:
/* 80579AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579AC4  7C 08 02 A6 */	mflr r0
/* 80579AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579AD0  7C 7F 1B 78 */	mr r31, r3
/* 80579AD4  38 60 00 07 */	li r3, 7
/* 80579AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80579ADC  7C 9E 23 78 */	mr r30, r4
/* 80579AE0  7F E4 FB 78 */	mr r4, r31
/* 80579AE4  4B E2 07 81 */	bl mDemo_Check
/* 80579AE8  2C 03 00 01 */	cmpwi r3, 1
/* 80579AEC  40 82 00 2C */	bne lbl_80579B18
/* 80579AF0  4B E2 09 21 */	bl mDemo_Check_ListenAble
/* 80579AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80579AF8  40 82 00 34 */	bne lbl_80579B2C
/* 80579AFC  7F E3 FB 78 */	mr r3, r31
/* 80579B00  4B FF D6 C9 */	bl aNSC_Set_ListenAble
/* 80579B04  7F E3 FB 78 */	mr r3, r31
/* 80579B08  7F C4 F3 78 */	mr r4, r30
/* 80579B0C  38 A0 00 0D */	li r5, 0xd
/* 80579B10  48 00 29 A5 */	bl aNSC_setupAction
/* 80579B14  48 00 00 18 */	b lbl_80579B2C
lbl_80579B18:
/* 80579B18  3C 60 80 58 */	lis r3, aNSC_set_talk_info_request_Q_start_wait@ha /* 0x80579A90@ha */
/* 80579B1C  7F E4 FB 78 */	mr r4, r31
/* 80579B20  38 A3 9A 90 */	addi r5, r3, aNSC_set_talk_info_request_Q_start_wait@l /* 0x80579A90@l */
/* 80579B24  38 60 00 07 */	li r3, 7
/* 80579B28  4B E2 06 35 */	bl mDemo_Request
lbl_80579B2C:
/* 80579B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579B38  7C 08 03 A6 */	mtlr r0
/* 80579B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80579B40  4E 80 00 20 */	blr 
