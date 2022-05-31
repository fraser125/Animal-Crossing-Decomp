lbl_803F6E94:
/* 803F6E94  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6E98  C0 23 00 00 */	lfs f1, 0(r3)
/* 803F6E9C  C0 04 33 EC */	lfs f0, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6EA4  4C 41 13 82 */	cror 2, 1, 2
/* 803F6EA8  40 82 00 08 */	bne lbl_803F6EB0
/* 803F6EAC  48 00 00 08 */	b lbl_803F6EB4
lbl_803F6EB0:
/* 803F6EB0  FC 20 08 50 */	fneg f1, f1
lbl_803F6EB4:
/* 803F6EB4  3C 80 80 64 */	lis r4, lit_455@ha /* 0x80643410@ha */
/* 803F6EB8  C0 04 34 10 */	lfs f0, lit_455@l(r4)  /* 0x80643410@l */
/* 803F6EBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6EC0  40 80 00 6C */	bge lbl_803F6F2C
/* 803F6EC4  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6EC8  C0 23 00 08 */	lfs f1, 8(r3)
/* 803F6ECC  C0 04 33 EC */	lfs f0, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6ED4  4C 41 13 82 */	cror 2, 1, 2
/* 803F6ED8  40 82 00 08 */	bne lbl_803F6EE0
/* 803F6EDC  48 00 00 08 */	b lbl_803F6EE4
lbl_803F6EE0:
/* 803F6EE0  FC 20 08 50 */	fneg f1, f1
lbl_803F6EE4:
/* 803F6EE4  3C 80 80 64 */	lis r4, lit_455@ha /* 0x80643410@ha */
/* 803F6EE8  C0 04 34 10 */	lfs f0, lit_455@l(r4)  /* 0x80643410@l */
/* 803F6EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6EF0  40 80 00 3C */	bge lbl_803F6F2C
/* 803F6EF4  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6EF8  C0 23 00 04 */	lfs f1, 4(r3)
/* 803F6EFC  C0 04 33 EC */	lfs f0, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6F04  4C 41 13 82 */	cror 2, 1, 2
/* 803F6F08  40 82 00 08 */	bne lbl_803F6F10
/* 803F6F0C  48 00 00 08 */	b lbl_803F6F14
lbl_803F6F10:
/* 803F6F10  FC 20 08 50 */	fneg f1, f1
lbl_803F6F14:
/* 803F6F14  3C 60 80 64 */	lis r3, lit_455@ha /* 0x80643410@ha */
/* 803F6F18  C0 03 34 10 */	lfs f0, lit_455@l(r3)  /* 0x80643410@l */
/* 803F6F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6F20  40 80 00 0C */	bge lbl_803F6F2C
/* 803F6F24  38 60 00 01 */	li r3, 1
/* 803F6F28  4E 80 00 20 */	blr 
lbl_803F6F2C:
/* 803F6F2C  38 60 00 00 */	li r3, 0
/* 803F6F30  4E 80 00 20 */	blr 
