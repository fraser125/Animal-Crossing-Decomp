lbl_805675D0:
/* 805675D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805675D4  7C 08 02 A6 */	mflr r0
/* 805675D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805675DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805675E0  4B B3 38 ED */	bl func_8009AECC
/* 805675E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805675E8  7C 7B 1B 78 */	mr r27, r3
/* 805675EC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805675F0  3B 80 00 00 */	li r28, 0
/* 805675F4  3F C3 00 02 */	addis r30, r3, 2
/* 805675F8  AB BE 06 94 */	lha r29, 0x694(r30)
/* 805675FC  7F DF F3 78 */	mr r31, r30
/* 80567600  3B DE 06 9C */	addi r30, r30, 0x69c
lbl_80567604:
/* 80567604  7F C3 F3 78 */	mr r3, r30
/* 80567608  4B E5 51 99 */	bl mMl_check_not_used_mail
/* 8056760C  2C 03 00 00 */	cmpwi r3, 0
/* 80567610  40 82 00 2C */	bne lbl_8056763C
/* 80567614  7F C3 F3 78 */	mr r3, r30
/* 80567618  4B E5 54 CD */	bl mMl_hunt_for_send_address
/* 8056761C  7C 03 D8 00 */	cmpw r3, r27
/* 80567620  40 82 00 1C */	bne lbl_8056763C
/* 80567624  3B BD FF FF */	addi r29, r29, -1
/* 80567628  7F A0 07 35 */	extsh. r0, r29
/* 8056762C  40 80 00 08 */	bge lbl_80567634
/* 80567630  3B A0 00 00 */	li r29, 0
lbl_80567634:
/* 80567634  7F C3 F3 78 */	mr r3, r30
/* 80567638  4B E5 50 C9 */	bl mMl_clear_mail
lbl_8056763C:
/* 8056763C  3B 9C 00 01 */	addi r28, r28, 1
/* 80567640  3B DE 01 2A */	addi r30, r30, 0x12a
/* 80567644  2C 1C 00 05 */	cmpwi r28, 5
/* 80567648  41 80 FF BC */	blt lbl_80567604
/* 8056764C  B3 BF 06 94 */	sth r29, 0x694(r31)
/* 80567650  39 61 00 20 */	addi r11, r1, 0x20
/* 80567654  4B B3 38 C5 */	bl func_8009AF18
/* 80567658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056765C  7C 08 03 A6 */	mtlr r0
/* 80567660  38 21 00 20 */	addi r1, r1, 0x20
/* 80567664  4E 80 00 20 */	blr 
