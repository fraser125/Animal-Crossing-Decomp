lbl_804CF2DC:
/* 804CF2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CF2E0  7C 08 02 A6 */	mflr r0
/* 804CF2E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CF2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CF2EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CF2F0  7C 7F 1B 78 */	mr r31, r3
/* 804CF2F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CF2F8  3C 63 00 02 */	addis r3, r3, 2
/* 804CF2FC  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CF300  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CF304  41 80 00 28 */	blt lbl_804CF32C
/* 804CF308  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804CF30C  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804CF310  7C 04 00 00 */	cmpw r4, r0
/* 804CF314  40 80 00 18 */	bge lbl_804CF32C
/* 804CF318  7C 84 00 50 */	subf r4, r4, r0
/* 804CF31C  38 60 00 00 */	li r3, 0
/* 804CF320  4B FF FC D1 */	bl calc_scale_Ef_Room_Sunshine
/* 804CF324  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CF328  48 00 00 38 */	b lbl_804CF360
lbl_804CF32C:
/* 804CF32C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CF330  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CF334  7C 04 00 00 */	cmpw r4, r0
/* 804CF338  41 80 00 1C */	blt lbl_804CF354
/* 804CF33C  38 03 51 80 */	addi r0, r3, 0x5180
/* 804CF340  38 60 00 01 */	li r3, 1
/* 804CF344  7C 84 00 50 */	subf r4, r4, r0
/* 804CF348  4B FF FC A9 */	bl calc_scale_Ef_Room_Sunshine
/* 804CF34C  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CF350  48 00 00 10 */	b lbl_804CF360
lbl_804CF354:
/* 804CF354  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CF358  C0 03 62 F0 */	lfs f0, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CF35C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804CF360:
/* 804CF360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CF364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CF368  7C 08 03 A6 */	mtlr r0
/* 804CF36C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CF370  4E 80 00 20 */	blr 
