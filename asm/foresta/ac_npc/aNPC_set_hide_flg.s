lbl_80537CE0:
/* 80537CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80537CE4  7C 08 02 A6 */	mflr r0
/* 80537CE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80537CEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80537CF0  4B B6 31 E5 */	bl func_8009AED4
/* 80537CF4  7C 9E 23 78 */	mr r30, r4
/* 80537CF8  7C 7D 1B 78 */	mr r29, r3
/* 80537CFC  6B C0 00 01 */	xori r0, r30, 1
/* 80537D00  98 03 08 30 */	stb r0, 0x830(r3)
/* 80537D04  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80537D08  4B FF FF 89 */	bl func_80537C90
/* 80537D0C  9B DD 08 30 */	stb r30, 0x830(r29)
/* 80537D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80537D14  9B FD 01 08 */	stb r31, 0x108(r29)
/* 80537D18  4B B6 32 09 */	bl func_8009AF20
/* 80537D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80537D20  7C 08 03 A6 */	mtlr r0
/* 80537D24  38 21 00 20 */	addi r1, r1, 0x20
/* 80537D28  4E 80 00 20 */	blr 
