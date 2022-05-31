lbl_803EEC48:
/* 803EEC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEC4C  7C 08 02 A6 */	mflr r0
/* 803EEC50  38 60 00 11 */	li r3, 0x11
/* 803EEC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEC58  4B C1 7F 7D */	bl JW_GetAramAddress
/* 803EEC5C  3C 80 81 17 */	lis r4, data_81171458@ha /* 0x81171458@ha */
/* 803EEC60  90 64 14 58 */	stw r3, data_81171458@l(r4)  /* 0x81171458@l */
/* 803EEC64  38 60 00 10 */	li r3, 0x10
/* 803EEC68  4B C1 7F 6D */	bl JW_GetAramAddress
/* 803EEC6C  3C 80 81 17 */	lis r4, String_rom_start@ha /* 0x8117145C@ha */
/* 803EEC70  90 64 14 5C */	stw r3, String_rom_start@l(r4)  /* 0x8117145C@l */
/* 803EEC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EEC78  7C 08 03 A6 */	mtlr r0
/* 803EEC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EEC80  4E 80 00 20 */	blr 
