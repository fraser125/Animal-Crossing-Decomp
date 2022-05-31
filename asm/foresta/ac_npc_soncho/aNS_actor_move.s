lbl_8057EB14:
/* 8057EB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EB18  7C 08 02 A6 */	mflr r0
/* 8057EB1C  3C A0 80 65 */	lis r5, data_80649A34@ha /* 0x80649A34@ha */
/* 8057EB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EB24  38 C5 9A 34 */	addi r6, r5, data_80649A34@l /* 0x80649A34@l */
/* 8057EB28  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057EB2C  38 00 00 01 */	li r0, 1
/* 8057EB30  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8057EB34  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057EB38  3C A5 00 02 */	addis r5, r5, 2
/* 8057EB3C  D0 03 09 18 */	stfs f0, 0x918(r3)
/* 8057EB40  C0 06 00 00 */	lfs f0, 0(r6)
/* 8057EB44  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8057EB48  D0 23 09 1C */	stfs f1, 0x91c(r3)
/* 8057EB4C  D0 03 09 20 */	stfs f0, 0x920(r3)
/* 8057EB50  98 03 09 17 */	stb r0, 0x917(r3)
/* 8057EB54  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057EB58  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8057EB5C  7D 89 03 A6 */	mtctr r12
/* 8057EB60  4E 80 04 21 */	bctrl 
/* 8057EB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EB68  7C 08 03 A6 */	mtlr r0
/* 8057EB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EB70  4E 80 00 20 */	blr 
