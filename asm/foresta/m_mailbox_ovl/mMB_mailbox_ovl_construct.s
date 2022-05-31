lbl_805E5D78:
/* 805E5D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5D7C  7C 08 02 A6 */	mflr r0
/* 805E5D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E5D88  93 C1 00 08 */	stw r30, 8(r1)
/* 805E5D8C  7C 7E 1B 78 */	mr r30, r3
/* 805E5D90  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E5D94  80 1F 09 98 */	lwz r0, 0x998(r31)
/* 805E5D98  28 00 00 00 */	cmplwi r0, 0
/* 805E5D9C  40 82 00 40 */	bne lbl_805E5DDC
/* 805E5DA0  3C 60 81 21 */	lis r3, mail_ovl_data@ha /* 0x81212588@ha */
/* 805E5DA4  38 80 00 14 */	li r4, 0x14
/* 805E5DA8  38 63 25 88 */	addi r3, r3, mail_ovl_data@l /* 0x81212588@l */
/* 805E5DAC  38 A0 00 00 */	li r5, 0
/* 805E5DB0  4B DD 4C 99 */	bl mem_clear
/* 805E5DB4  3C 80 81 21 */	lis r4, mail_ovl_data@ha /* 0x81212588@ha */
/* 805E5DB8  7F C3 F3 78 */	mr r3, r30
/* 805E5DBC  38 04 25 88 */	addi r0, r4, mail_ovl_data@l /* 0x81212588@l */
/* 805E5DC0  90 1F 09 98 */	stw r0, 0x998(r31)
/* 805E5DC4  4B FF FF 85 */	bl mMB_mailbox_ovl_data_init
/* 805E5DC8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805E5DCC  3C 80 80 5E */	lis r4, func_805E5528@ha /* 0x805E5528@ha */
/* 805E5DD0  38 04 55 28 */	addi r0, r4, func_805E5528@l /* 0x805E5528@l */
/* 805E5DD4  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805E5DD8  90 03 00 10 */	stw r0, 0x10(r3)
lbl_805E5DDC:
/* 805E5DDC  7F C3 F3 78 */	mr r3, r30
/* 805E5DE0  4B FF FF 31 */	bl mMB_mailbox_ovl_init
/* 805E5DE4  7F C3 F3 78 */	mr r3, r30
/* 805E5DE8  4B FF FE C5 */	bl mMB_mailbox_ovl_set_proc
/* 805E5DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E5DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E5DF8  7C 08 03 A6 */	mtlr r0
/* 805E5DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5E00  4E 80 00 20 */	blr 
