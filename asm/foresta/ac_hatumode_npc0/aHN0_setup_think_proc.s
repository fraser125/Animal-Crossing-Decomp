lbl_8052BA48:
/* 8052BA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BA4C  7C 08 02 A6 */	mflr r0
/* 8052BA50  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8052BA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BA58  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8052BA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052BA60  7C 7F 1B 78 */	mr r31, r3
/* 8052BA64  98 A3 09 A2 */	stb r5, 0x9a2(r3)
/* 8052BA68  3C A6 00 02 */	addis r5, r6, 2
/* 8052BA6C  80 A5 60 D0 */	lwz r5, 0x60d0(r5)
/* 8052BA70  28 05 00 00 */	cmplwi r5, 0
/* 8052BA74  41 82 00 28 */	beq lbl_8052BA9C
/* 8052BA78  81 85 00 04 */	lwz r12, 4(r5)
/* 8052BA7C  7D 89 03 A6 */	mtctr r12
/* 8052BA80  4E 80 04 21 */	bctrl 
/* 8052BA84  3C 80 80 6A */	lis r4, talk_request_table@ha /* 0x806A1370@ha */
/* 8052BA88  54 60 10 3A */	slwi r0, r3, 2
/* 8052BA8C  38 64 13 70 */	addi r3, r4, talk_request_table@l /* 0x806A1370@l */
/* 8052BA90  7C 03 00 2E */	lwzx r0, r3, r0
/* 8052BA94  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8052BA98  48 00 00 18 */	b lbl_8052BAB0
lbl_8052BA9C:
/* 8052BA9C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8052BAA0  38 00 00 01 */	li r0, 1
/* 8052BAA4  38 63 B5 4C */	addi r3, r3, none_proc1@l /* 0x803BB54C@l */
/* 8052BAA8  90 7F 09 64 */	stw r3, 0x964(r31)
/* 8052BAAC  98 1F 09 A6 */	stb r0, 0x9a6(r31)
lbl_8052BAB0:
/* 8052BAB0  38 00 00 01 */	li r0, 1
/* 8052BAB4  98 1F 09 A7 */	stb r0, 0x9a7(r31)
/* 8052BAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052BAC0  7C 08 03 A6 */	mtlr r0
/* 8052BAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BAC8  4E 80 00 20 */	blr 
