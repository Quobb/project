funct = (rows, columns) => { 
    return rows * columns;
  };
  
  const champ = (rows, columns)=> {
    return monitorCount(rows, columns)*200;
  };
  
  const itors = (rows, columns) => {
    return monitorCount(rows, columns)*200;
  };
  const totalCost = champ (5,4);
  
  console.log(totalCost)

  //new function

  const plantNeedsWater = (day) =>{

    if (day === 'Wednesday')
    {
      return true;
    }
    else
    {
      return false;
    }
  };
  
  console.log(plantNeedsWater('Tuesday'));

  //third function
    const satellite = 'The Moon';
    const galaxy = 'The Milky Way';
    const stars ='North Star'
    const callMyNightSky =()=>{
  return 'Night Sky: ' + satellite + ', ' + stars + ', and ' + galaxy;
}
console.log(callMyNightSky())
  