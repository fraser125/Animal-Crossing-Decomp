lbl_804A6194:
/* 804A6194  38 A0 00 00 */	li r5, 0
/* 804A6198  3C 80 80 4A */	lis r4, aSMAN_process_swim@ha /* 0x804A61BC@ha */
/* 804A619C  98 A3 01 08 */	stb r5, 0x108(r3)
/* 804A61A0  38 04 61 BC */	addi r0, r4, aSMAN_process_swim@l /* 0x804A61BC@l */
/* 804A61A4  B0 A3 01 FA */	sth r5, 0x1fa(r3)
/* 804A61A8  A8 83 01 F8 */	lha r4, 0x1f8(r3)
/* 804A61AC  60 84 00 04 */	ori r4, r4, 4
/* 804A61B0  B0 83 01 F8 */	sth r4, 0x1f8(r3)
/* 804A61B4  90 03 01 90 */	stw r0, 0x190(r3)
/* 804A61B8  4E 80 00 20 */	blr 
