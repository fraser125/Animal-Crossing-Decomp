lbl_8048385C:
/* 8048385C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80483860  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80483864  3C A5 00 02 */	addis r5, r5, 2
/* 80483868  80 A5 60 30 */	lwz r5, 0x6030(r5)
/* 8048386C  28 05 00 00 */	cmplwi r5, 0
/* 80483870  41 82 00 0C */	beq lbl_8048387C
/* 80483874  80 05 00 00 */	lwz r0, 0(r5)
/* 80483878  48 00 00 08 */	b lbl_80483880
lbl_8048387C:
/* 8048387C  38 00 00 00 */	li r0, 0
lbl_80483880:
/* 80483880  28 00 00 00 */	cmplwi r0, 0
/* 80483884  41 82 00 3C */	beq lbl_804838C0
/* 80483888  28 05 00 00 */	cmplwi r5, 0
/* 8048388C  41 82 00 0C */	beq lbl_80483898
/* 80483890  80 A5 00 00 */	lwz r5, 0(r5)
/* 80483894  48 00 00 08 */	b lbl_8048389C
lbl_80483898:
/* 80483898  38 A0 00 00 */	li r5, 0
lbl_8048389C:
/* 8048389C  80 05 03 DC */	lwz r0, 0x3dc(r5)
/* 804838A0  2C 00 00 00 */	cmpwi r0, 0
/* 804838A4  40 82 00 1C */	bne lbl_804838C0
/* 804838A8  90 65 03 E4 */	stw r3, 0x3e4(r5)
/* 804838AC  38 00 00 01 */	li r0, 1
/* 804838B0  38 60 00 01 */	li r3, 1
/* 804838B4  90 85 03 E8 */	stw r4, 0x3e8(r5)
/* 804838B8  90 05 03 DC */	stw r0, 0x3dc(r5)
/* 804838BC  4E 80 00 20 */	blr 
lbl_804838C0:
/* 804838C0  38 60 00 00 */	li r3, 0
/* 804838C4  4E 80 00 20 */	blr 