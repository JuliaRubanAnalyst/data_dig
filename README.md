# Pokemon Database Project

## Overview
This project involves creating and querying a SQL database that stores data about various Pokémon. The database contains a table named `pokemon`, which holds detailed information about each Pokémon, including stats like HP, Attack, Defense, and more.

## Database Structure
The `pokemon` table includes the following fields:
- `Number`: Pokémon number.
- `Name`: Name of the Pokémon (Primary Key).
- `Type_1`: Primary type of the Pokémon.
- `Type_2`: Secondary type (if any) of the Pokémon.
- `Total`: Total stats of the Pokémon.
- ... (other stats like HP, Attack, Defense, etc.)
- `Generation`: The generation to which the Pokémon belongs.
- `Legendary`: Indicates if the Pokémon is legendary.

## Queries
1. **Average, Maximum, and Minimum Attack and Defense Stats**: Calculates the average, maximum, and minimum values for Attack and Defense stats across all Pokémon.
2. **Average Attack and Defense for Specific Type**: Aggregates average Attack and Defense for Pokémon with a specific secondary type, and having average attack above a certain threshold.
3. **Categorization Based on Attack and Defense Stats**: Categorizes Pokémon based on whether their attack or defense stats are above a certain threshold.
4. **Filtering Based on HP and Attack, or Type**: Retrieves names and certain stats of Pokémon either having HP and attack above a certain threshold or belonging to a specific type.

## Example Query Results
### Stats Summary
| Average Attack | Max Attack | Min Attack | Average Defense | Max Defense | Min Defense |
|----------------|------------|------------|-----------------|-------------|-------------|
| 75.4           | 134        | 49         | 70.6            | 123         | 43          |

### Average Stats for Poison Type
| Name                       | Avg Attack | Avg Defense |
|----------------------------|------------|-------------|
| CharizardMega Charizard Y  | 106        | 89          |
| VenusaurMega Venusaur      | 73.25      | 79.5        |

### Categorization Based on Stats
| Name                   | Category     |
|------------------------|--------------|
| Bulbasaur              | Balanced     |
| Ivysaur                | Balanced     |
| Venusaur               | Balanced     |
| VenusaurMega Venusaur  | High Defense |
| Charmander             | Balanced     |
| Charmeleon             | Balanced     |
| Charizard              | Balanced     |
| ...                    | ...          |

### Pokemon with High HP and Attack or Fire Type
| Name                      | Type 2  | HP  | Attack |
|---------------------------|---------|-----|--------|
| Venusaur                  | Poison  | 80  | 82     |
| VenusaurMega Venusaur     | Poison  | 80  | 100    |
| Charizard                 | Flying  | 78  | 84     |
| CharizardMega Charizard X | Dragon  | 78  | 130    |
| CharizardMega Charizard Y | Flying  | 78  | 104    |
| ...                       | ...     | ... | ...    |

