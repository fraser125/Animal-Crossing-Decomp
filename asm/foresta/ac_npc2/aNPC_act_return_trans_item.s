lbl_8053F204:
/* 8053F204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F208  7C 08 02 A6 */	mflr r0
/* 8053F20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F214  7C 7F 1B 78 */	mr r31, r3
/* 8053F218  88 03 08 33 */	lbz r0, 0x833(r3)
/* 8053F21C  28 00 00 00 */	cmplwi r0, 0
/* 8053F220  41 82 00 38 */	beq lbl_8053F258
/* 8053F224  3C A0 80 6A */	lis r5, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053F228  38 80 00 04 */	li r4, 4
/* 8053F22C  38 E5 2B 78 */	addi r7, r5, data_806A2B78@l /* 0x806A2B78@l */
/* 8053F230  38 C0 00 00 */	li r6, 0
/* 8053F234  38 A0 00 05 */	li r5, 5
/* 8053F238  48 00 01 69 */	bl aNPC_set_request_act
/* 8053F23C  2C 03 00 01 */	cmpwi r3, 1
/* 8053F240  40 82 00 28 */	bne lbl_8053F268
/* 8053F244  80 7F 08 48 */	lwz r3, 0x848(r31)
/* 8053F248  38 00 00 FF */	li r0, 0xff
/* 8053F24C  90 7F 08 40 */	stw r3, 0x840(r31)
/* 8053F250  98 1F 07 F6 */	stb r0, 0x7f6(r31)
/* 8053F254  48 00 00 14 */	b lbl_8053F268
lbl_8053F258:
/* 8053F258  38 60 00 00 */	li r3, 0
/* 8053F25C  38 00 00 FF */	li r0, 0xff
/* 8053F260  90 7F 08 40 */	stw r3, 0x840(r31)
/* 8053F264  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053F268:
/* 8053F268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F26C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F270  7C 08 03 A6 */	mtlr r0
/* 8053F274  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F278  4E 80 00 20 */	blr 
