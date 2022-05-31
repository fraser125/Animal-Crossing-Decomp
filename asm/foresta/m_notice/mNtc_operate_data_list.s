lbl_803C9EC8:
/* 803C9EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9ECC  7C 08 02 A6 */	mflr r0
/* 803C9ED0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9ED8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C9EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9EE0  3F E3 00 02 */	addis r31, r3, 2
/* 803C9EE4  A0 7F 61 26 */	lhz r3, 0x6126(r31)
/* 803C9EE8  48 03 D9 E1 */	bl lbRk_VernalEquinoxDay
/* 803C9EEC  3C 80 81 17 */	lis r4, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9EF0  38 A3 02 F6 */	addi r5, r3, 0x2f6
/* 803C9EF4  38 C4 B2 B8 */	addi r6, r4, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9EF8  38 03 02 FF */	addi r0, r3, 0x2ff
/* 803C9EFC  38 83 02 FB */	addi r4, r3, 0x2fb
/* 803C9F00  B0 A6 00 1A */	sth r5, 0x1a(r6)
/* 803C9F04  A0 7F 61 26 */	lhz r3, 0x6126(r31)
/* 803C9F08  B0 86 00 1E */	sth r4, 0x1e(r6)
/* 803C9F0C  B0 06 00 22 */	sth r0, 0x22(r6)
/* 803C9F10  48 03 DA 1D */	bl lbRk_AutumnalEquinoxDay
/* 803C9F14  3C 80 81 17 */	lis r4, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9F18  38 A3 08 F6 */	addi r5, r3, 0x8f6
/* 803C9F1C  38 C4 B2 B8 */	addi r6, r4, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9F20  38 03 08 FF */	addi r0, r3, 0x8ff
/* 803C9F24  38 83 08 FB */	addi r4, r3, 0x8fb
/* 803C9F28  B0 A6 00 62 */	sth r5, 0x62(r6)
/* 803C9F2C  38 60 00 03 */	li r3, 3
/* 803C9F30  38 A0 00 00 */	li r5, 0
/* 803C9F34  B0 86 00 66 */	sth r4, 0x66(r6)
/* 803C9F38  38 80 00 06 */	li r4, 6
/* 803C9F3C  B0 06 00 6A */	sth r0, 0x6a(r6)
/* 803C9F40  4B FD 15 95 */	bl mEv_weekday2day
/* 803C9F44  3C 80 81 17 */	lis r4, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9F48  38 03 03 00 */	addi r0, r3, 0x300
/* 803C9F4C  38 84 B2 B8 */	addi r4, r4, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9F50  38 60 00 0A */	li r3, 0xa
/* 803C9F54  B0 04 00 A6 */	sth r0, 0xa6(r4)
/* 803C9F58  38 80 00 06 */	li r4, 6
/* 803C9F5C  38 A0 00 00 */	li r5, 0
/* 803C9F60  4B FD 15 75 */	bl mEv_weekday2day
/* 803C9F64  3C 80 81 17 */	lis r4, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9F68  38 03 09 F9 */	addi r0, r3, 0x9f9
/* 803C9F6C  38 64 B2 B8 */	addi r3, r4, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9F70  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 803C9F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9F7C  7C 08 03 A6 */	mtlr r0
/* 803C9F80  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9F84  4E 80 00 20 */	blr 
