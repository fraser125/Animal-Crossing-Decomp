lbl_804AC0D8:
/* 804AC0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AC0DC  7C 08 02 A6 */	mflr r0
/* 804AC0E0  38 63 01 10 */	addi r3, r3, 0x110
/* 804AC0E4  38 80 00 00 */	li r4, 0
/* 804AC0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AC0EC  38 A0 0C 00 */	li r5, 0xc00
/* 804AC0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AC0F4  83 E3 19 28 */	lwz r31, 0x1928(r3)
/* 804AC0F8  4B F4 45 09 */	bl mSc_secure_exchange_keep_bank
/* 804AC0FC  28 03 00 00 */	cmplwi r3, 0
/* 804AC100  41 82 00 1C */	beq lbl_804AC11C
/* 804AC104  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AC108  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AC10C  3C 63 00 02 */	addis r3, r3, 2
/* 804AC110  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804AC114  93 E3 00 08 */	stw r31, 8(r3)
/* 804AC118  48 00 00 1C */	b lbl_804AC134
lbl_804AC11C:
/* 804AC11C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AC120  38 00 FF FF */	li r0, -1
/* 804AC124  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AC128  3C 63 00 02 */	addis r3, r3, 2
/* 804AC12C  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804AC130  90 03 00 08 */	stw r0, 8(r3)
lbl_804AC134:
/* 804AC134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AC138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AC13C  7C 08 03 A6 */	mtlr r0
/* 804AC140  38 21 00 10 */	addi r1, r1, 0x10
/* 804AC144  4E 80 00 20 */	blr 
