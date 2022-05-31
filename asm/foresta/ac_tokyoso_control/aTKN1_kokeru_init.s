lbl_804AB35C:
/* 804AB35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB360  7C 08 02 A6 */	mflr r0
/* 804AB364  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB368  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB36C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804AB370  3C C5 00 02 */	addis r6, r5, 2
/* 804AB374  38 80 00 67 */	li r4, 0x67
/* 804AB378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB37C  7C 7F 1B 78 */	mr r31, r3
/* 804AB380  38 A0 00 00 */	li r5, 0
/* 804AB384  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 804AB388  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB38C  7D 89 03 A6 */	mtctr r12
/* 804AB390  4E 80 04 21 */	bctrl 
/* 804AB394  3C 60 80 64 */	lis r3, lit_608@ha /* 0x80645E50@ha */
/* 804AB398  38 C0 00 00 */	li r6, 0
/* 804AB39C  38 A3 5E 50 */	addi r5, r3, lit_608@l /* 0x80645E50@l */
/* 804AB3A0  3C 60 80 64 */	lis r3, lit_609@ha /* 0x80645E54@ha */
/* 804AB3A4  90 DF 01 BC */	stw r6, 0x1bc(r31)
/* 804AB3A8  38 83 5E 54 */	addi r4, r3, lit_609@l /* 0x80645E54@l */
/* 804AB3AC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804AB3B0  38 60 00 67 */	li r3, 0x67
/* 804AB3B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804AB3B8  38 00 00 02 */	li r0, 2
/* 804AB3BC  D0 3F 08 F8 */	stfs f1, 0x8f8(r31)
/* 804AB3C0  D0 1F 09 00 */	stfs f0, 0x900(r31)
/* 804AB3C4  B0 DF 09 26 */	sth r6, 0x926(r31)
/* 804AB3C8  B0 7F 09 74 */	sth r3, 0x974(r31)
/* 804AB3CC  98 1F 09 73 */	stb r0, 0x973(r31)
/* 804AB3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB3D8  7C 08 03 A6 */	mtlr r0
/* 804AB3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB3E0  4E 80 00 20 */	blr 
