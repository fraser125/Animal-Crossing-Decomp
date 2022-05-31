lbl_8056AFA0:
/* 8056AFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056AFA4  7C 08 02 A6 */	mflr r0
/* 8056AFA8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056AFAC  3C E0 80 6C */	lis r7, ct_data@ha /* 0x806BE884@ha */
/* 8056AFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056AFB4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056AFB8  3C C5 00 02 */	addis r6, r5, 2
/* 8056AFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056AFC0  7C 7F 1B 78 */	mr r31, r3
/* 8056AFC4  38 A7 E8 84 */	addi r5, r7, ct_data@l /* 0x806BE884@l */
/* 8056AFC8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8056AFCC  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8056AFD0  7D 89 03 A6 */	mtctr r12
/* 8056AFD4  4E 80 04 21 */	bctrl 
/* 8056AFD8  38 A0 00 00 */	li r5, 0
/* 8056AFDC  3C 60 80 65 */	lis r3, data_80649844@ha /* 0x80649844@ha */
/* 8056AFE0  98 BF 08 30 */	stb r5, 0x830(r31)
/* 8056AFE4  38 00 FF FF */	li r0, -1
/* 8056AFE8  38 83 98 44 */	addi r4, r3, data_80649844@l /* 0x80649844@l */
/* 8056AFEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056AFF0  B0 1F 09 A2 */	sth r0, 0x9a2(r31)
/* 8056AFF4  38 00 00 01 */	li r0, 1
/* 8056AFF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056AFFC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8056B000  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8056B004  38 00 00 32 */	li r0, 0x32
/* 8056B008  3C 63 00 03 */	addis r3, r3, 3
/* 8056B00C  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 8056B010  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8056B014  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 8056B018  28 00 FF FF */	cmplwi r0, 0xffff
/* 8056B01C  40 82 00 10 */	bne lbl_8056B02C
/* 8056B020  B0 BF 09 78 */	sth r5, 0x978(r31)
/* 8056B024  38 80 00 01 */	li r4, 1
/* 8056B028  48 00 00 08 */	b lbl_8056B030
lbl_8056B02C:
/* 8056B02C  38 80 00 00 */	li r4, 0
lbl_8056B030:
/* 8056B030  7F E3 FB 78 */	mr r3, r31
/* 8056B034  48 00 10 CD */	bl aPOL2_setupAction
/* 8056B038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056B040  7C 08 03 A6 */	mtlr r0
/* 8056B044  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B048  4E 80 00 20 */	blr 
