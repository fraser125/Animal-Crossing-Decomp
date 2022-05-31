lbl_80482F74:
/* 80482F74  3C 80 80 48 */	lis r4, aNI_RequestCopyClothData@ha /* 0x8048347C@ha */
/* 80482F78  90 63 03 A8 */	stw r3, 0x3a8(r3)
/* 80482F7C  38 04 34 7C */	addi r0, r4, aNI_RequestCopyClothData@l /* 0x8048347C@l */
/* 80482F80  3C 80 80 48 */	lis r4, aNI_RequestCopyUmbData@ha /* 0x80483710@ha */
/* 80482F84  90 03 03 B0 */	stw r0, 0x3b0(r3)
/* 80482F88  38 04 37 10 */	addi r0, r4, aNI_RequestCopyUmbData@l /* 0x80483710@l */
/* 80482F8C  3C 80 80 48 */	lis r4, aNI_RequestExchangeCloth@ha /* 0x804835C4@ha */
/* 80482F90  3C A0 80 48 */	lis r5, aNI_RequestExchangeUmb@ha /* 0x8048385C@ha */
/* 80482F94  90 03 03 D0 */	stw r0, 0x3d0(r3)
/* 80482F98  38 04 35 C4 */	addi r0, r4, aNI_RequestExchangeCloth@l /* 0x804835C4@l */
/* 80482F9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80482FA0  38 A5 38 5C */	addi r5, r5, aNI_RequestExchangeUmb@l /* 0x8048385C@l */
/* 80482FA4  90 03 03 C0 */	stw r0, 0x3c0(r3)
/* 80482FA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80482FAC  38 03 03 A8 */	addi r0, r3, 0x3a8
/* 80482FB0  90 A3 03 E0 */	stw r5, 0x3e0(r3)
/* 80482FB4  3C 64 00 02 */	addis r3, r4, 2
/* 80482FB8  90 03 60 30 */	stw r0, 0x6030(r3)
/* 80482FBC  4E 80 00 20 */	blr 
