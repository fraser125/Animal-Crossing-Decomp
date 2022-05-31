lbl_8052AA6C:
/* 8052AA6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052AA70  7C 08 02 A6 */	mflr r0
/* 8052AA74  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052AA78  39 61 00 30 */	addi r11, r1, 0x30
/* 8052AA7C  4B B7 04 59 */	bl func_8009AED4
/* 8052AA80  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052AA84  7C 7F 1B 78 */	mr r31, r3
/* 8052AA88  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052AA8C  7C 9D 23 78 */	mr r29, r4
/* 8052AA90  3F C5 00 02 */	addis r30, r5, 2
/* 8052AA94  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8052AA98  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8052AA9C  7D 89 03 A6 */	mtctr r12
/* 8052AAA0  4E 80 04 21 */	bctrl 
/* 8052AAA4  2C 03 00 01 */	cmpwi r3, 1
/* 8052AAA8  40 82 00 C8 */	bne lbl_8052AB70
/* 8052AAAC  3C 60 80 53 */	lis r3, aHN0_schedule_proc@ha /* 0x8052BC10@ha */
/* 8052AAB0  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A12EC@ha */
/* 8052AAB4  38 03 BC 10 */	addi r0, r3, aHN0_schedule_proc@l /* 0x8052BC10@l */
/* 8052AAB8  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8052AABC  38 A4 12 EC */	addi r5, r4, ct_data@l /* 0x806A12EC@l */
/* 8052AAC0  7F E3 FB 78 */	mr r3, r31
/* 8052AAC4  7F A4 EB 78 */	mr r4, r29
/* 8052AAC8  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8052AACC  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8052AAD0  7D 89 03 A6 */	mtctr r12
/* 8052AAD4  4E 80 04 21 */	bctrl 
/* 8052AAD8  38 60 FF FF */	li r3, -1
/* 8052AADC  38 00 00 00 */	li r0, 0
/* 8052AAE0  90 7F 08 F4 */	stw r3, 0x8f4(r31)
/* 8052AAE4  7F E3 FB 78 */	mr r3, r31
/* 8052AAE8  98 1F 09 A7 */	stb r0, 0x9a7(r31)
/* 8052AAEC  4B EA 74 15 */	bl mNpc_GetNpcLooks
/* 8052AAF0  3C 80 80 6A */	lis r4, base_msg_table@ha /* 0x806A1308@ha */
/* 8052AAF4  54 60 10 3A */	slwi r0, r3, 2
/* 8052AAF8  38 64 13 08 */	addi r3, r4, base_msg_table@l /* 0x806A1308@l */
/* 8052AAFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8052AB00  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8052AB04  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8052AB08  28 00 D0 58 */	cmplwi r0, 0xd058
/* 8052AB0C  40 82 00 14 */	bne lbl_8052AB20
/* 8052AB10  48 00 02 49 */	bl func_8052AD58
/* 8052AB14  3C 60 80 65 */	lis r3, data_8064925C@ha /* 0x8064925C@ha */
/* 8052AB18  C0 03 92 5C */	lfs f0, data_8064925C@l(r3)  /* 0x8064925C@l */
/* 8052AB1C  D0 1F 01 40 */	stfs f0, 0x140(r31)
lbl_8052AB20:
/* 8052AB20  38 00 00 00 */	li r0, 0
/* 8052AB24  3C 60 80 65 */	lis r3, lit_488@ha /* 0x80649260@ha */
/* 8052AB28  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8052AB2C  C0 23 92 60 */	lfs f1, lit_488@l(r3)  /* 0x80649260@l */
/* 8052AB30  38 61 00 08 */	addi r3, r1, 8
/* 8052AB34  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8052AB38  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8052AB3C  90 81 00 08 */	stw r4, 8(r1)
/* 8052AB40  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052AB44  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8052AB48  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052AB4C  4B E6 4E 4D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8052AB50  3C 60 80 65 */	lis r3, lit_488@ha /* 0x80649260@ha */
/* 8052AB54  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8052AB58  C0 03 92 60 */	lfs f0, lit_488@l(r3)  /* 0x80649260@l */
/* 8052AB5C  38 00 00 14 */	li r0, 0x14
/* 8052AB60  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8052AB64  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8052AB68  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8052AB6C  B0 1F 09 46 */	sth r0, 0x946(r31)
lbl_8052AB70:
/* 8052AB70  39 61 00 30 */	addi r11, r1, 0x30
/* 8052AB74  4B B7 03 AD */	bl func_8009AF20
/* 8052AB78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052AB7C  7C 08 03 A6 */	mtlr r0
/* 8052AB80  38 21 00 30 */	addi r1, r1, 0x30
/* 8052AB84  4E 80 00 20 */	blr 
